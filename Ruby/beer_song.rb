def beer_bottles()
	puts 'How many beers are on the wall?'
	beers = gets.chomp
	while beers > 0
		puts beers + ' bottles of beers on the wall'
		puts beers + ' bottles of beers!'
		puts 'You take one down, pass it around,'
		beers = (beers.to_i - 1).to_s
		puts beers + 'bottles of beers on the wall!'
	end
end

beer_bottles()