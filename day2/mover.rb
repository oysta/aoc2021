depth = 0
distance = 0

$<.each { |line| 
   command, units = line.split
   units = units.to_i
   case command
   when "forward"
     distance += units
   when "down"
     depth += units
   when "up" 
     depth -= units
   end
}

puts depth * distance
