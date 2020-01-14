class Cult

    attr_accessor :name, :location, :founding_year, :slogan, :age

    @@all = [] #all cults

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
        BloodOath.all.each {|oath| oath.cult == self}.count
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        all.select {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(founding_year)
        all.select {|cult| cult.founding_year }     
    end

    def average_age
        population = self.cult_population.to_f
        array_of_ages = BloodOath.all.select {|bloodoath| bloodoath.cult == self}.map {|cult| cult.follower.age}
        accumulative_age = array_of_ages.inject{|sum, age| sum += age }
        average = accumulative_age / population 
        average.to_f
    end

    def my_followers_mottos
        BloodOath.all.select {|bloodoath| bloodoath.cult == self}.map {|cult| cult.follower.life_motto}
    end

    def self.least_popular
        all.sort {|cult| cult.cult_population}[0]
    end

    def self.most_common_location
       
        all.map {|cult| cult.location}.each_with_object(Hash.new(0)) {|location, count| location[count] += 1}
    
        #each_with_object(obj) 

        #Hash.new(0) sets default value for any key to 0
        #{|location, count| location[count] += 1}


    end
    # end

end