def deaf_grandma()
	puts "Hello my little pumpkin' nugget! Welcome to grandma's house!"
	count = 0
	while count
		puts '>'
		chat = gets.chomp
		if chat.upcase != chat
			puts "HUH?! SPEAK UP, SONNY!"
		else
			if chat == 'BYE'
				count += 1
					if count == 3
						puts 'OH OK TAKE CARE NOW!'
						break
					end
			else
				count = 0
			end
			puts 'NO, NOT SINCE ' + rand(1930..1950).to_s
		end
	end
end

deaf_grandma()