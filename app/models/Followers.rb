class Follower

  @@all = [] 

  attr_accessor :name, :age, :life_motto, :followers_cults

  def initialize(name, age, life_motto)
    @name = name 
    @age = age 
    @life_motto = life_motto
    @@all << self 
  end 

  def self.all 
    @@all 
  end
  
  def cults 
    BloodOath.all.select{|blood_oath| blood_oath.follower == self}.map{|blood_oath| blood_oath.cult }
  
  end 
  
  
  def join_cult
    BloodOath.new(cult,self)
  end 

  def self.of_a_certain_age(age)
    Follower.all.select {|follower| follower.age >= age}
     
  end 

  

end







