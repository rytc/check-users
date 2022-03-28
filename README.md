
# Check user changes script
This is a Ruby script to check hourly if the Linux user list has changed. 

The `check_users.rb` script simply lists out the user names and home directories of every user on the system.

The `check_changes.rb` script first does a MD5 hash of the results of the `check_users.rb` command. Then it compares it with the hash stored in `/var/log/current_users`. If a change was detected, the change will be logged into `/var/log/user_changes`.

# Installation

Copy the `check_users.rb` and `check_changes.rb` scripts into `/usr/local/bin`

To setup the scripts to run automatically every hour, either place the `check_users_hourly.sh` script into `/etc/cron.hourly/` directory 

OR add this line to `/etc/crontab`:

`0 * * * * root ruby /usr/local/bin/check_users.rb`



