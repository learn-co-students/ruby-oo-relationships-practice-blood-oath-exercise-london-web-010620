require 'date'

class Bloodoath 

    attr_reader :cult, :follower

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

    def initiation_date
        #return string with initiation date in the format: YYYY-MM-DD
    end

    

end