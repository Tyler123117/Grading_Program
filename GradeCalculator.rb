#introduction
puts "--- Grade calculator ---\n\nEnter grade ratios or enter STOP to quit.\n\n"

#declaration of variables
continue = true
count = 0
group_grade = 0
total_grade = 0
i = 0
groups_hash = Hash.new(0)

#get introduction info
print "How many assignment groups?: "
  number_of_groups = gets.chomp.to_f

puts ""

#get groups and their weights
number_of_groups.to_i.times do
  i += 1
  print "What is the name of group #{i}?: "
    storage_var = gets.chomp
    groups_hash[storage_var]
  print "What is #{storage_var}'s weight (in decimal format)?: "
    groups_hash[storage_var] = gets.chomp
end

#get grade ratios for each group
groups_hash.each do |name, amount|
  puts "\nGroup: #{name}\n"
  while continue do
    print "Enter grade ratio #{count+1}: "
    current = gets.chomp

    if(current == "STOP")
      continue = false;
    else
    count += 1
     ratio = current.split("/")
     group_grade += (ratio[0].to_f / ratio[1].to_f) * 100
    end
  end
  group_grade /= count
  total_grade += group_grade.to_f * amount.to_f
  group_grade = 0
  continue = true
  count = 0
end

puts "\nYour total grade is: #{total_grade}"
28.47
30.41
31.86
