class Generator
    @@all = []
    attr_accessor :other

    def initialize(other)
        @@all << self
        puts other
    end


    def self.all
        puts @@all
    end

end