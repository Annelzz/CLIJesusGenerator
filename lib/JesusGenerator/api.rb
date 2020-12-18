
require 'open-uri'
require 'net/http'
require 'json'


class API

    def self.get_gospel(book, section, phrase)

        url = "https://getbible.net/json?scrip=#{book}#{section}:#{phrase}/"
        uri = URI(url)
        response = Net::HTTP.get_response(uri)
        bodied = response.body()

        # 'takenout' gets rid of the first item in the body and the last three, all of which were unneeded semicolons
        takenout = bodied.slice!(1..(bodied.length-3))
        parsed = JSON.parse(takenout)


        # 'other' parses JSON and returns the verse it finds, utilizing user inputs 
        other = ((parsed)["book"])[0]["chapter"]["#{phrase}"]["verse"]

        newverse = Generator.new(other)
        other
    end      
end
