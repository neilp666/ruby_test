class Webserver
end

new_webserver = Array.new
File.open('webserver.log').each { |line| new_webserver << line }

puts new_webserver
