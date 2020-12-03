class CLI

    attr_accessor :gospel, :chapter, :verse_number

    def start
        # puts "Welcome to my app!"
        # puts "Please enter a Gospel(Matthew, Mark, Luke, John)"
        # gospel = gets.chomp
        # puts "Now enter a Chapter Number(ex. 15)"
        # chapter = gets.to_i
        # puts "Now enter a Verse Number(ex. 3)"
        # verse_number = gets.to_i
        gospel = "Matthew"
        chapter = 2
        verse_number = 15
        API.get_gospel(gospel, chapter, verse_number)
        # puts "#{final}"
    end
end