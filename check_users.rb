cat_output = `cat /etc/passwd`
cat_list = cat_output.split

for line in cat_list
  sections = line.split(':')
  if sections[5] then 
    puts sections[0] + ":" + sections[5]
  else 
    puts sections[0] + ":"
  end 
end
