class Cult
    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
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
        BloodOath.all.each {|oath| oath.cult == self}
        .map {|oath| oath.follower}.count

        #number of bloodoath's when cult name == self
    end

    def self.all
        @@all
    end

    def self.find_by_name(cult_name)
        Cult.all.select {|cult| cult.name == cult_name}
    end

    def self.find_by_location(location)
        Cult.all.select {|x| x.location == location}
    end

    def self.find_by_founding_year(founding_year)
        Cult.all.select {|cult| cult.founding_year == founding_year}
    end

    def average_age
       age_sum = BloodOath.all.select {|i| i.cult == self} .map {|i| i.follower.age}.sum
       current_population = self.cult_population
       age_sum/current_population.to_f
    end

    def my_followers_mottos
        mottos = BloodOath.all.select {|i| i.cult == self}.map {|i| i.follower.life_motto}
        puts mottos
    end




end