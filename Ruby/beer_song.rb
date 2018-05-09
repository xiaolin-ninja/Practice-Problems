def beer_bottles()
	puts 'How many beers are on the wall?'
	beers = gets.chomp
	while beers.to_i > 0
		if beers.to_i == 1
			puts "\n" + beers + ' bottle of beers on the wall, ' + 
			 beers + ' bottle of beers!'
		else
			puts "\n" + beers + ' bottles of beers on the wall, ' + 
				 beers + ' bottles of beers!'
		end
		puts 'You take one down, pass it around,'
		beers = (beers.to_i - 1).to_s
		puts beers + " bottles of beers on the wall! \n"
	end
end

beer_bottles()