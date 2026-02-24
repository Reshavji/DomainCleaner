# DomainCleaner
A simple and powerful Bash tool that converts messy URLs into clean domains/subdomains, removes duplicates, and shows processing statistics.
Perfect for:

🔍 Bug bounty hunters

🌐 Recon workflows

🛡️ Security researchers

📂 Cleaning large domain lists

✨ Features

Removes http:// and https://

Removes www.

Removes paths (/login, /api, etc.)

Removes ports (:8080)

Filters invalid entries

Removes duplicate domains

Shows processing statistics

Works with large files (100k+ entries)

📦 Installation

Clone the repository:

git clone https://github.com/yourusername/domain-cleaner.git
cd domain-cleaner

Make the script executable:

chmod +x cleanDomains.sh
🛠️ Usage
./cleanDomains.sh targets.txt
