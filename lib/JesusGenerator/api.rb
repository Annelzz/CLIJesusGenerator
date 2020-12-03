
require 'open-uri'
require 'net/http'
require 'json'


class API

    def self.get_gospel(book, section, phrase)
        url = "https://getbible.net/json?scrip=#{book}#{section}:#{phrase}/"
        uri = URI(url)
        response = Net::HTTP.get_response(uri)
        bodied = response.body()
        takenout = bodied.slice!(1..(bodied.length-3))
        parsed = JSON.parse(takenout)

        # puts parsed

        temp = parsed["book"]
        book = temp[0]
        chapter = book["chapter"]

        other = ((parsed)["book"])[0]["chapter"]["#{phrase}"]["verse"]

        newverse = Generator.new(other)
        newverse

    end
        
end
