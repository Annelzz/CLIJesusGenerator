
class Generator
    @@all = []
    attr_accessor :other

    def initialize(other)
        @other = other
        @@all << self
    end

    def other
        @other
    end

    def other=(other)
        @other = other
    end

    def self.all
        @@all
    end

    def self.all_verses
        @@all.collect do |a|
            a.other 
        end
    end


end