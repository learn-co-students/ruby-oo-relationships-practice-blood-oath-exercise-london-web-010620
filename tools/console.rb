require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


puts "Mwahahaha!" # just in case pry is buggy and exits

cult_1 = Cult.new("cult_1", "New York", 2020, "flatiron") 
cult_2 = Cult.new("cult_2", "London", 2019, "flatiron") 
cult_3 = Cult.new("cult_2", "London", 2019, "flatiron") 

follower_1 = Follower.new("Alex", 23, "sex, drugs and alcohol")
follower_2 = Follower.new("Simon", 25, "sex, drugs and alcohol")
follower_3 = Follower.new("John", 26, "sex, drugs and alcohol")

cult_1.recruit_follower(follower_1)
cult_1.recruit_follower(follower_2)
cult_1.recruit_follower(follower_3)

cult_3.recruit_follower(follower_1)
cult_3.recruit_follower(follower_2)


binding.pry
