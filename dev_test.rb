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