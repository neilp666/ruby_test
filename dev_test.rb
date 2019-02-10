class Webserver
  new_webserver = Array.new
  File.open('webserver.log').each { |line| new_webserver << line }
  puts new_webserver

  new_webserver.sort! {|x, y| x <=> y}
  puts new_webserver

end