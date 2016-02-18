def calculation(num1, num2, mod)
	if ['+', 'add', 'plus'].include?(mod)
		answer = num1 + num2
	elsif ["-", "minus", "subtract"].include?(mod)
		answer = num1 - num2
	elsif ["*", "times", "multiply"].include?(mod)
		answer = num1 * num2
	elsif ["/", "divide", "divided by"].include?(mod)
    answer = num1 / num2
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
		num1 = gets.strip.to_f

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
		num2 = gets.strip.to_f

		while(true)
			num1 = calculation(num1, num2, mod)
			puts num1
			puts "Enter Modifier (c: clear, e: exit)"
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
