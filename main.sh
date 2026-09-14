#!/bin/bash

echo "================================="
echo "AI Cloud Deployment Platform"
echo "================================="

echo "1. Deploy Website"
echo "2. Analyze Logs"
echo "3. Create Backup"
echo "4. Restore Website"
echo "5. Exit"

read -p "Choose Option: " choice

case $choice in

1)
    ./scripts/deploy.sh
    ;;

2)
    python3 ai/log_analyzer.py
    ;;

3)
    ./scripts/backup.sh
    ;;

4)
    ./scripts/restore.sh
    ;;

5)
    exit
    ;;

*)
    echo "Invalid Option"
    ;;
esac
