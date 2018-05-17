def beer_bottles()
	puts 'How many beers are on the wall?'
	beers = gets.chomp.to_i
	while beers > 0
		if beers == 1
			puts "\n #{beers} bottle of beers on the wall, 
				 #{beers} bottle of beers!"
		else
			puts "\n #{beers} bottles of beers on the wall, 
				 #{beers} bottles of beers!"
		end
		puts 'You take one down, pass it around,'
		beers -= 1
		puts "#{beers} bottles of beers on the wall! \n"
	end
end

beer_bottles()