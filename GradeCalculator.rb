puts "--- Grade calculator ---\n\nEnter grade ratios or enter STOP to quit.\n\n"

continue = true
count = 0
total_grade = 0

while continue do
  count += 1
  print "Enter grade ratio #{count}: "
  current = gets.chomp
  
  if(current == "STOP")
    continue = false;
  else
   ratio = current.split("/")
   total_grade += (ratio[0].to_f / ratio[1].to_f) * 100
  end
end

count -= 1

total_grade /= count

puts "\nYour total grade is: #{total_grade}"

