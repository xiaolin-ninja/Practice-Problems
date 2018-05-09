class Dragon
    def initialize name
        @name = name
        @asleep = false
        @fullness = 0 # it's not hungry
        @potty = 0 # it doesn't need to go

        puts @name + 'is born.'
    end

    def feed
        puts "Omnomnom " + @name " loves to eat!"
        @fullness += 10
        timePasses
    end

    def walk
        puts @name + " is getting chubby! Let's go for a walk"
        @fullness -= 1
        @intestine += 1
        timePasses
    end

    def putToBed
        puts "What a long day~ " + @name + " needs a nap."
        @asleep = true
        3.times do 
            if @asleep
                timePasses
                puts @name + ' snores, filling the room with smoke.'
            end
        end
        if @asleep
            @asleep = false
            puts @name + " wakes up slowly"
        end
    end

    def toss
        puts 'You toss ' + @name + ' up into the air!'
        puts 'It giggles, which singes your eyebrows'
        timePasses
    end

    def rock
        puts 'You rock ' + @name + 'gently. Well, as gently as you can a giant baby dragon.'
        @asleep = true
        puts 'It briefly dozes off...'
        timePasses
        if @asleep
            @asleep = false
            puts '... but wakes up when you stop.'
        end
    end

    private 
    # methods defined below are only internal to the object
    # cannot be used to directly interact with instances
    def hungry?
        @fullnesss <= 2
    end

    def poopy?
        @potty >= 8
    end

    def timePasses
        if @fullness > 0
            @fullness -= 1
            @potty += 1

        else #dragon is starving
            if @asleep
                @asleep = false
                puts @name + " awakens suddenly, crying for food!"
            end
                puts @name + " looks starved! It looks around frantically, and then stares intensely at you."
                puts "Your dragon is too hungry. It eats you!"
                exit
            end

        if @poopy >= 10
            @poopy = 0
            puts 'Oops! ' + @name + ' had an accident...'
        end

        if hungry?
            wakeUp
            end
            puts @name + '\'s stomach grumbles...'

        if poopy?
            wakeUp
            end
            puts @name + ' does the potty dance...'

    def wakeUp
        if @asleep
            @asleep = false
            puts @name + " awakens suddenly!"
        end
    end

end