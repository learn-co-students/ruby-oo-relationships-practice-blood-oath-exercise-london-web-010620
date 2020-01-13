class Cult

    attr_accessor :name, :location, :slogan, :population
    attr_reader :founding_year

    @@all = []
    
    def initialize(name,location, founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self

    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    def cult_population
        BloodOath.all.select {|blood_oath| blood_oath.cult == self}.length
    end

    def self.all
        @@all
    end

    def self.find_by_name(cult_name)
        Cult.all.select {|cult| cult.name == cult_name}
    end

    def self.find_by_founding_year(founding_year)
        Cult.all.select {|cult| cult.founding_year == founding_year}
    end

  

end