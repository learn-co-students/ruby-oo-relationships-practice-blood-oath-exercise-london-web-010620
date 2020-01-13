require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("Masons","New York",1990,"ninety")
f1 = Follower.new("Sergio", 30, "speed")
b_o1 = Bloodoath.new(c1, f1, 2020-06-25)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
