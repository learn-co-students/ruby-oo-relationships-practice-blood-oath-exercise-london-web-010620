class Cult 
  attr_accessor :name, :location, :slogan, :follower
  attr_reader :founding_year

  @@all = []

  def initialize(name, location, founding_year, slogan)
      @name = name 
      @location = location 
      @founding_year = founding_year 
      @slogan = slogan 
      @@all << self 
  end 

  def self.all
    @@all 
  end 

  def self.find_by_name(name) 
    Cult.all.select {|cult| cult.name == self }
    #self.all.find{|cult| cult.name == name }
  end 

  def self.find_by_founding_year(founding_year) 
    Cult.all.select {|cult| cult.founding_year == founding_year}
    #self.all.select{|cult| cult.founding_year == founding_year }
  end 

  def self.find_by_location(location)
    self.all.select{|cult| cult.location == location }

  end 
  
  def cult_population 
    BloodOath.all.select{|blood_oath| blood_oath.cult == self }.map{|blood_oath| blood_oath.follower}.count 
  end 

  def recruit_follower(follower)
    BloodOath.new(self, follower)
  
  end 

  #advanced methods
  def average_age
    #returns average age of this cult's followers 
    follower_age_sum = BloodOath.all.select{|oath| oath.cult == self}.map{|oath|oath.follower.age}.sum 
    
    self.cult_population = current_population
    follower_age_sum / current_population
    
  end 
  
  def my_followers_mottos 
    BloodOath.all.select{|oath| oath == self}.map{|oath| oath.follower.life_motto}
  end 


end 


#look at Anderson lecture video, shows how to simplify using methods. Used reduce for average_age 
    
    


   








