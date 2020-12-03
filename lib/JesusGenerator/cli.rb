class CLI
    attr_accessor :gospel, :chapter, :verse_number

    def start

        puts "Welcome to my app! It generates quotes from the Gospels of the Bible!"

        puts "Please enter a Gospel(Matthew, Mark, Luke, John)"
        gospel = gets.chomp
        if gospel == "Matthew"
        elsif gospel == "Mark"
        elsif gospel == "Luke"
        elsif gospel == "John"
        else
            puts "Please enter a listed name."
            exit
        end

        puts "Now enter a Chapter Number(ex. 15)"
        chapter = gets.to_i
        if chapter > 0 && chapter < 29
        else
            puts "Try a positive number ranging from 1-16."
            exit
        end

        puts "Now enter a Verse Number(ex. 3)"
        verse_number = gets.to_i
        if verse_number > 0 && verse_number < 76
        else
            puts "Try a positive number ranging from 1-75 (26 is the average number for the Gospels)"
            exit
        end

        puts "Here's the verse:"
        sleep 1

        API.get_gospel(gospel, chapter, verse_number)
    end
end