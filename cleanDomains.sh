#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./cleanDomains.sh input.txt"
    exit 1
fi

INPUT="$1"
OUTPUT="cleaned_domains.txt"

echo "[+] Processing file..."

# Clean domains
sed -E 's#https?://##; s#^www\.##' "$INPUT" | \
cut -d/ -f1 | \
cut -d: -f1 | \
tr -d ' ' | \
grep -E '^[A-Za-z0-9.-]+\.[A-Za-z]{2,}$' > temp_clean.txt

TOTAL=$(wc -l < temp_clean.txt)

# Remove duplicates
sort -u temp_clean.txt > "$OUTPUT"

UNIQUE=$(wc -l < "$OUTPUT")
DUPLICATES=$((TOTAL - UNIQUE))

rm temp_clean.txt

echo "----------------------------"
echo "Total Extracted Domains: $TOTAL"
echo "Unique Domains: $UNIQUE"
echo "Duplicates Removed: $DUPLICATES"
echo "Final Output File: $OUTPUT"
echo "----------------------------"
