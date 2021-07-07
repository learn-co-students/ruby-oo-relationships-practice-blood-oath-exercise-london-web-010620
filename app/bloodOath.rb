require 'date'

class Bloodoath 

    attr_reader :cult, :follower, :initiation_date

    @@all = []
    
    def initialize(cult, follower,initiation_date)
        @cult = cult 
        @follower = follower
        @initiation_date = Date.today.to_s

        @@all << self
    end

    def self.all 
        @@all 
    end 

    #return string with initiation date in the format: YYYY-MM-DD
    def initiation_date
        @initiation_date
    end

    #returns the `Follower` instance for the follower that made the very first blood oath
    def self.first_oath 

    end

    

end