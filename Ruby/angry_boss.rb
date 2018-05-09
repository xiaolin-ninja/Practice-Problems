def angry_boss()
    puts 'What is your first name?'
    first_name = gets.chomp.capitalize
    puts 'Ok ' + first_name + ' what is your last name?'
    last_name = gets.chomp.capitalize
    puts 'Hello ' + first_name + ' ' + last_name + '. What do you want?'
    while desire = gets.chomp
        if desire.downcase == 'i want a raise'
            puts 'WHADDAYA MEAN "I WANT A RAISE."?!?! YOU\'RE FIRED!!'
            break
        elsif desire.downcase == 'you are the best boss ever'
            puts 'Thanks! Here have a raise'
            break
        else
            puts 'What gibberish are you spewing?'
            puts 'Whaddaya want?'
        end
    end
end

print angry_boss()