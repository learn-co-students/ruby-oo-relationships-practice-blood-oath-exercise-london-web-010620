require 'pry'
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

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    def cult_population
        BloodOath.all.each { |oath| oath.cult == self }.map { |oath| oath.follower }.count
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

    def my_followers
        BloodOath.all.select { |oath| oath.cult == self }.map { |cult| cult.follower }
    end

    def average_age
       my_followers.map { |follower| follower.age }.sum / my_followers.length
    end
 
    def my_followers_mottos
        my_followers.each { |follower| puts follower.life_motto }
    end

    def self.least_popular
        @@all.min { |cult_a, cult_b| cult_a.cult_population <=> cult_b.cult_population }
    end

    def self.most_common_location
    end


end
