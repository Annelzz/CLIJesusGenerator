class Generator
    @@all = []

    attr_accessor :name, :other

    def initialize(other)
        @@all << self
        puts other
    end

    def self.all
        @@all
    end

end