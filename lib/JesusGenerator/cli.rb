class CLI

    def start

        puts "Welcome to my app! It generates quotes from the Gospels of the Bible!"

        puts "Please enter a Gospel(Matthew, Mark, Luke, John)"
        @gospel = gets.chomp
        if @gospel == "Matthew" || @gospel == "Mark" || @gospel == "Luke" || @gospel == "John"
            get_chapter
        else
            puts "Please enter a listed name."
            start
        end
    end

    def get_chapter
        puts "Now enter a Chapter Number(ex. 15)"
        @chapter = gets.to_i
        if @chapter > 0 && @chapter < 29
            get_verse
        else
            puts "Try a positive number ranging from 1-16."
            get_chapter
        end
    end

    def get_verse
        puts "Now enter a Verse Number(ex. 3)"
        @verse_number = gets.to_i
        if @verse_number > 0 && @verse_number < 76
            produces_verse
        else
            puts "Try a positive number ranging from 1-75 (26 is the average number for the Gospels)"
            get_verse
        end
    end

    def produces_verse
        puts "Here's the verse:"
        sleep 1

        puts API.get_gospel(@gospel, @chapter, @verse_number)
        another_verse 
    end

    def another_verse
        puts "Would you like to get another verse? If so, type Yes"
        response = gets.chomp
        if response == "Yes"
            start
        else
            list_of_verses
        end
    end

    def list_of_verses
        puts "Would you like to see the verses you've received? If so, type Yes"
        response = gets.chomp
        if response == "Yes"
            puts Generator.all_verses
            start
        else
            puts "Thanks for using this app!"
            exit
        end
    end
end