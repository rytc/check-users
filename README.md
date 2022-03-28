
# Check user changes script
This is a Ruby script to check hourly if the Linux user list has changed. 

The `check_users.rb` script simply lists out the user names and home directories of every user on the system.

# Installation

Copy the `check_users.rb` script into `/usr/local/bin`

To setup the scripts to run automatically every hour, copy the line in the `crontab` file into `/etc/crontab` 

# Extra scripts

The `check_changes.rb` script first does a MD5 hash of the results of the `check_users.rb` command. Then it compares it with the hash stored in `/var/log/current_users`. If a change was detected, the change will be logged into `/var/log/user_changes`.


