require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult_1 = Cult.new("Flatiron", "London",  2010, "build break code")
follower_1 = Follower.new("Simon", 25, "hi")
follower_2 = Follower.new("Rikesh", 28, "Coding is my life")
follower_3 = Follower.new("Michael", 60, "What's a browser?")
oath_1 = BloodOath.new(cult_1, follower_1)
oath_2 = BloodOath.new(cult_1, follower_2)
oath_3 = BloodOath.new(cult_1, follower_3)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits