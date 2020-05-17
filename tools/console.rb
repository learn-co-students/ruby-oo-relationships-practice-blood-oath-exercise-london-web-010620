require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
f1 = Follower.new("adam", 1, "lifemotto1")
f2 = Follower.new("bill", 2, "lifemotto2")
f3 = Follower.new("chris", 3, "lifemotto3")

c1 = Cult.new("d", "location1", 2004, "slogan1")
c2 = Cult.new("e", "location2", 2005, "slogan2")
c3 = Cult.new("f", "location3", 2006, "slogan3")

bo1 = BloodOath.new(c1, f1)
bo2 = BloodOath.new(c2, f2)
bo3 = BloodOath.new(c3,f3)
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits