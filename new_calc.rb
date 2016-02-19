def menu
  puts
  puts "---  Calculator  ---"
  puts "-- c: clear q: quit--"
  puts
end

def quit
  if ['q'].include?(@out)
    puts 'Peace'
    exit
  end
end

def clear
  if ['c'].include?(@out)
    puts 'Clear'
    exit
  end
end

def input_1
  puts 'Enter First Number:'
  print '=> '
  num_1 = gets.strip.downcase
  @out = num_1
end

def input_2
  puts 'Enter operator:'
  print '=> '
  operator = gets.strip.downcase
  if ['+', '-', '*', '/'].include?(operator)
    puts "-> #{operator}"
    @out = operator
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
    @out_3 = num_2
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
