require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult_a = Cult.new("AAA","locationA", 1990,"sloganAAAAA")
cult_b = Cult.new("BBB","locationB", 1991,"sloganBBB")
cult_c = Cult.new("CCC","locationC", 1999,"sloganCCC")

follower_DDD = Follower.new("Adam", 20, "MottoZZZZ")
follower_EEE = Follower.new("Eve", 21, "MottoYYYY")
follower_FFF = Follower.new("Joe", 22, "MottoHHHHH")

blood_oath_1 = BloodOath.new(cult_a, follower_DDD )
blood_oath_2 = BloodOath.new(cult_b, follower_EEE)
blood_oath_3 = BloodOath.new(cult_c, follower_FFF)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
