require 'digest'

user_list_md5 = Digest::MD5.hexdigest `ruby /usr/local/bin/check_users.rb`

if File.exists?("/var/log/current_users") 
  prev_md5_file = File.open("/var/log/current_users", "r+")
  prev_md5 = prev_md5_file.read
  
  if user_list_md5 != prev_md5 
    prev_md5_file.write user_list_md5
    change_log = File.open("/var/log/user_changes", "w")
    today_date = Time.now.to_s
    change_log.write("#{today_date} changes occured")
    change_log.close
  end

  prev_md5_file.close()
else
  new_md5_file = File.open("/var/log/current_users", "w")
  new_md5_file.write user_list_md5
  new_md5_file.close
end



