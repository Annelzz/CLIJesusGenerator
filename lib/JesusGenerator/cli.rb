class CLI


    def start
        puts "Welcome to my app!"
        puts "Please enter a Gospel(Matthew, Mark, Luke, John)"
        gospel = gets.chomp
        puts "Now enter a Chapter Number(ex. 15)"
        chapter = gets.to-i
        puts "Now enter a Verse Number(ex. 3)"
        verse = gets.to-i
        API.get_gospel(gospel, chapter, verse)
    end
end