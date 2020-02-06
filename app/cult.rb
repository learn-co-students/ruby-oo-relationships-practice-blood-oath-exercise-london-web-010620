class Cult 

    
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        
        @@all << self
        # binding.pry
    end

    def self.all 
        @@all 
    end

    #takes in an argument of a `Follower` instance and adds them to this cult's list of followers
    def recruit_follower(follower, initiation_date)
        Bloodoath.new(self, follower, initiation_date)
    end

    #this is created by me
    def followers 
    Bloodoath.all.select {|oath| oath.cult == self}
    end

    #returns an integer that is the number of followers in this cult
    def cult_population 
        followers.map {|oath| oath.follower}.count
    end

    #takes a `String` argument that is a name and returns a `Cult` instance whose name matches that argument
    def self.find_by_name(name)
        self.all.find {|cult| cult.name == name}
    end

    #takes a `String` argument that is a location and returns an `Array` of cults that are in that location
    def self.find_by_location(location)
        self.all.select {|cult| cult.location == location}
    end

    #takes an `Integer` argument that is a year and returns all of the cults founded in that year
    def self.find_by_founding_year(founding_year)
        self.all.select {|cult| cult.founding_year == founding_year}
    end

    def average_age 
        age_total = followers.reduce(0) {|total, curr| total + curr.age}
        age_total / cult_population
    end

    #prints out all of the mottos for this cult's followers
    def my_followers_mottos
        life_m = []
        follow = followers.map {|oath| oath.follower}
        follow.each do |fol| 
             life_m << fol.life_motto 
            #binding.pry
        end
        puts life_m
    end

    #returns the `Cult` instance who has the least number of followers :(
    def self.least_popular
        
    end

    #returns an `Integer` that is the minimum age required for followers joining this cult
    def minimum_age

    end

    #takes in an argument of a `Follower` instance and adds them to this cult's list of followers
    #NOW this is changed such that if the given `Follower` instance is not of age:
    # - do not let them join the cult
    # - print out a friendly message informing them that they are too young
    def recruit_follower

    end

end