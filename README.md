Clean. Normalize. Deduplicate. Analyze.

DomainCleaner is a lightweight and fast Bash tool that converts messy URLs into clean domains or subdomains, removes duplicates, and displays processing statistics.

Built for:

🛡️ Bug bounty hunters

🔍 Recon automation

🌐 Subdomain enumeration cleanup

⚡ Large-scale domain processing

✨ Features

Removes http:// and https://

Removes www.

Removes paths (/login, /api, etc.)

Removes ports (:8080)

Filters invalid entries

Removes duplicate domains

Displays total, unique, and duplicate counts

Handles large files (100k – 1M+ entries)

📦 Installation

Clone the repository:

git clone https://github.com/Reshavji/DomainCleaner.git
cd DomainCleaner

Make the script executable:

chmod +x cleanDomains.sh
🛠️ Usage
./cleanDomains.sh targets.txt
📂 Input Example
https://example.com/login
http://www.test.com:8080/dashboard
sub.domain.com/path
example.com
https://example.com
📤 Output (cleaned_domains.txt)
example.com
test.com
sub.domain.com
📊 Example Output Statistics
[+] Processing file...
----------------------------
Total Extracted Domains: 800000
Unique Domains: 520000
Duplicates Removed: 280000
Final Output File: cleaned_domains.txt
----------------------------
⚡ Recon Workflow Example

Use with httpx:

./cleanDomains.sh all_targets.txt
cat cleaned_domains.txt | httpx -silent -status-code

Use with subfinder:

subfinder -d example.com -all -silent > subs.txt
./cleanDomains.sh subs.txt
📌 Requirements

Bash

sed

grep

sort

cut

tr

Tested on:

Linux

macOS

Kali Linux

🧠 How It Works

DomainCleaner processes the file in these stages:

Removes protocol (http/https)

Removes www.

Strips paths and ports

Filters valid domain patterns

Sorts and removes duplicates

Displays processing statistics

🛣️ Roadmap

 Add CLI flags (custom output name, root-only mode)

 Add progress bar for large files

 Add root domain extraction mode

 Add live domain checking mode

 Convert to Go for better performance

 Add CI/CD workflow

🤝 Contributing

Contributions are welcome!

If you'd like to improve DomainCleaner:

Fork the repository

Create a new branch

Commit your changes

Submit a Pull Request

Ways to contribute:

Performance optimization

Better validation logic

Additional filtering modes

Documentation improvements

Security enhancements

⭐ Support

If this tool helps you:

Star the repository ⭐

Share it with the security community

Open issues for suggestions or improvements

👨‍💻 Author

Reshav Kumar
Security Researcher | Web Developer
