def menu
  puts
  puts "---  Calculator  ---"
  puts "-- c: clear q: quit--"
  puts
end

def quit()
  if ['q'].include?()
    puts 'Peace'
    exit
  end
end

def clear
  puts 'Clear'
  exit
end

def input_1
  puts 'Enter First Number:'
  print '=> '
  num_1 = gets.strip.downcase
  quit
  clear
end

def input_2
  puts 'Enter operator:'
  print '=> '
  operator = gets.strip.downcase
  if ['+', '-', '*', '/'].include?(operator)
    puts "-> #{operator}"
  else
    puts "Invalid operator!"
  end
end

def input_3
  puts 'Enter another number:'
  print '=> '
  num_2 = gets.strip.split('')
  num_2.each do |i|
    puts "-> #{i}"
  end
end

def input
  input_1
  input_2
  input_3
end

while(true)
  menu
  input
end
