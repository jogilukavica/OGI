# OGI

## Cron job on Linux
```
Cron is the Linux task scheduler that is responsible for making sure scripts run at their specified times. Cron is often used for things like, log rotation, backup scripts, updating file indexes, and running custom scripts. In the event a task runs into problems or errors Cron generally tries to email the local administrator of the machine. This means it tries to send an email to itself instead of an “internet accessible” email address like, ‘user@gmail.com’.

We can change this default behavior by changing the MAILTO variable.

Note: This will not work if you have not setup an email server.

To change the MAILTO variable just add ‘MAILTO=username@domain.com’ into the crontab file.

```
```
# List of cron directories:
• /etc/cron.hourly
• /etc/cron.daily
• /etc/cron.weekly
• /etc/cron.monthly

# Copy your shell script ‘script.sh` or ‘script’ into one of the directories above.
# If you need to run the script hourly, place your script file in the “cron.hourly”
folder. For daily, place it inside the “cron.daily” and so forth.

# Give the shell script the correct permission. For example, if script is called
“script.sh”, set permission as follows:
```
```
cd /etc/cron.daily/
chmod 755 script.sh
```
```
# Add new cron job to crontab:
```
```
More graphically they would look like this:
* * * * * Command to be executed
- - - - -
| | | | |
| | | | +----- Day of week (0-7)
| | | +------- Month (1 - 12)
| | +--------- Day of month (1 - 31)
| +----------- Hour (0 - 23)
+------------- Min (0 - 59)
An example command would be “0 0 * * * /etc/cron.daily/script.sh”. This
would mean that the shell script will exactly execute at midnight every
night.
```
```
### I added crontab file in this repo which can be just copied.

```
## Script.sh

```
Simplest Script as possible that curl GitHub API and read a commits for a user.
Then exports everything in to CommitHistory.txt. The content is cat from generated file CommitHistory.txt,
Then content from CommitHistory.txt is included into email body.
Then email is sent to specified email address, or addresses..

PS
There should be SMTP server all ready set up on Server.

```
