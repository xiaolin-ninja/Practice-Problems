def deaf_grandma()
	puts "Hello my little pumpkin' nugget! Welcome to grandma's house!"
	count = 0
	while True
		puts '>'
		chat = gets.chomp
		if chat.upcase != chat.downcase
			puts "HUH?! SPEAK UP, SONNY!"
		if chat.upcase == 'BYE'
			count += 1
			if count == 3
				break
		else
			count = 0
			puts 'NO, NOT SINCE' + rand(1930, 1950)
		end

deaf_grandma()