require 'date'

date = Time.new
date = date.day.to_s + "/" + date.month.to_s + "/" + date.year.to_s
time = Time.new
time = time.hour.to_s + ":" + time.min.to_s

puts "Enter your first name"
first_name = gets.chomp
puts "Enter your last name"
last_name = gets.chomp
full_name = first_name + " " + last_name

puts "Hello #{full_name}"
puts "Today's " + date + " " + "And time " + time
puts "#1 To Display the webserver.log file"
puts "Press any key to continue or CTRL-C (^C) to quit"


gets.chomp

puts "Opening the file..."


class Webserver
  
  new_webserver = Array.new
  File.open('webserver.log').each { |line| new_webserver << line }
  puts new_webserver

  new_webserver.sort! {|x, y| x <=> y}
  puts new_webserver

  new_webserver = Hash[new_webserver.uniq.map {|i| [i, new_webserver.count(i)]}]
  new_webserver.sort{|a,b| b[1]<=>a[1]}.each { |elem| 
  puts "#{elem[0]} has #{elem[1]} unique views"

}

end