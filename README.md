# DevOps Shell Scripts 

This repo contains shell scripts to practice DevOps automation and Git.

## Project Structure
scripts/
  - system_health.sh : Monitor CPU, memory, disk
  - service_checker.sh : Check essential services
  - log_cleaner.sh : Clean old logs

## Features
- Monitor system resources
- Check services (nginx)
- Clean logs automatically
- Practice Git branching, tagging, submodules

=====================================

# DevOps Shell Scripts

This repository contains useful **Bash scripts** for DevOps automation and Linux system administration.  

---

## Scripts Included

1. **healthcheck.sh**
   - Checks CPU, Memory, and Disk usage.
   - Prints system health summary.

2. **service_checker.sh**
   - Checks if essential services (nginx, docker, mysql) are running.

3. **log_cleaner.sh**
   - Deletes `.log` files older than 7 days from a log directory.
   - Helps free up disk space automatically.

---

## How to Use
```bash
# Clone the repo
git clone https://github.com/Divyashree-LB/devops-shell-scripts.git
cd devops-shell-scripts/scripts

# Make scripts executable
chmod +x *.sh

# Run any script
./healthcheck.sh
./service_checker.sh
./log_cleaner.sh

