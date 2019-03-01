# conjur-backuprestore-demo
Automated steps to perform a backup and a restore of Conjur master (demo purposes)

## How it works 
1 - Deploy a conjur master.

2 - Create a variable in Conjur to populate it with sample items.

3 - List Conjur elements using the CLI. 

4 - Create the backup.

5 - Deploy a new master.

6 - Use the backup to perform restoration. 

7 - List again Conjur elements using the CLI to observe successful restoration. 

Clean environment demo environment.

## Software Prerequisites
Docker should be installed

## Variables to set
Variables should be set in the file vars.sh

CyberArk opensource binary summon can be used to inject variables. 
https://github.com/cyberark/summon

## Versions
conjur-appliance v5.2.4

conjur-cli cyberark/conju-cli v5 (publicly available on dockerhub)
