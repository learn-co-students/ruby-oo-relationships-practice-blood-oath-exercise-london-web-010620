class BloodOath 

    attr_accessor :initiation_date, :cult, :followers 
    
    @@all = [] 
    def initialize(cult, followers)
        @initiation_date = Date.today.to_s
        @cult = cult
        @followers = followers
        
        @@all << self 
    end 

    def self.all
      @@all 
    end 
  end