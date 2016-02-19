def calculation(num1, num2, mod)
	if ['+', 'add', 'plus'].include?(mod)
    answer = num1.to_f + num2.to_f
	elsif ["-", "minus", "subtract"].include?(mod)
    answer = num1.to_f - num2.to_f
	elsif ["*", "times", "multiply"].include?(mod)
    answer = num1.to_f * num2.to_f
	elsif ["/", "divide", "divided by"].include?(mod)
    if num2 || num1  == 0
      puts "You can't divide by zero!"
    else
      answer = num1.to_f / num2.to_f
    end
	else
		puts "You done f*cked up."
	end
end

def main_menu
	while(true)
		puts ""
		puts "-- Calculator --"
		puts "Enter First Number"
		print "> "
		num1 = gets.strip
		puts ""
		puts "Enter Operator (c: clear, e: exit)"
		print "> "
		mod = gets.strip.downcase
			if mod == 'c'
				redo
			elsif mod == 'e'
				exit
			end

		puts ""
		puts "Enter Second Number"
		print "> "
		num2 = gets.strip
		while(true)
			num1 = calculation(num1, num2, mod)
			puts num1
			puts "Enter Modifier (c: clear, e: exit)"
      print "> "
			mod = gets.strip.downcase
				if mod == 'c'
					break
				elsif mod == 'e'
					exit
				end
			puts ""
			puts "Enter Second Number"
			print "> "
			num2 = gets.strip.to_f
		end
	end
end

main_menu
