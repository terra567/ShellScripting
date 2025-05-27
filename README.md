# Write a script to report the usage of AWS in your project ??

## Will use Shell Scripting file + AWS CLI to make it work. To set an automation, will use Crontab.

### Pre-requiisites:

1. Using an EC2 instance as a server.
2. Check the Date and Timezone of the server, Cron will check system date and local time/date
3. install crontab in EC2 machine
4. Make shell script file executable

### To Install Crontab 
```
sudo yum install cronie -y
sudo systemctl enable crond.service
sudo systemctl start crond.service
sudo systemctl status crond | grep Active
```

### Please check the resource-mgmt.sh from resource section

### Use CHMOD to make it executablt:
```
chmod 777 resource-mgmt.sh
```

### Run Crontab

```
crontab -e
00 00 * * * /path/resource-mgmt.sh >> /path/cron.log 2>&1
# Everyday at 00:00 UTC My script will run. My machine has Date/Time set to UTC timezone
```
Crontab Date/Time format:
```
# Format:
# * * * * * command
# | | | | |
# | | | | +----- Day of week (0-7) (Sunday=0 or 7)
# | | | +------- Month (1-12)
# | | +--------- Day of month (1-31)
# | +----------- Hour (0-23)
# +------------- Minute (0-59)
```


