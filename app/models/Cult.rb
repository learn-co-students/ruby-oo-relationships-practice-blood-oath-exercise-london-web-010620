class Cult
    
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year.to_i
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end 

    def self.find_by_name(name_of_cult)
        @@all.find { |cult| cult.name == name_of_cult }
    end

    def self.find_by_location(location_of_cult)
        @@all.select { |cult| cult.location == location_of_cult }
    end

    def self.find_by_founding_year(founding_of_cult)
        @@all.select { |cult| cult.founding_year == founding_of_cult }
    end






end
