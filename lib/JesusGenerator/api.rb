
require 'open-uri'
require 'net/http'
require 'json'



class API


    def self.get_gospel(gospel, chapter, verse)
        url = "http://getbible.net/json?scrip=#{gospel} #{chapter}:#{verse}"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        JSON.parse(response.body)
      
    end
        
end
