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
    pulation of every cult
    #     #minimum value o
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

    def average_age
        #select all ages of this cult
        #divide the sum by number of followers
        
        follower_age_sum = BloodOath.all.select {|oath| oath.cult == self}.map {|oath| oath.follower.age}.sum
        current_population = self.cult_population

        follower_age_sum / current_population
    end

    def my_followers_mottos
        followers = BloodOath.all.select {|oath| oath.cult == self}.map { |oath| oath.follower.life_motto }
        puts followers        
    end

    # def self.least_popular
    #     #count the population of every cult
    #     #minimum value out of all cults
    # end
end