require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("Masons","New York",1990,"The Best")
c2 = Cult.new("Reptilians","London",1995,"The Second Best")
c3 = Cult.new("New Age Cult","Berlin",1998,"The Third Best")


f1 = Follower.new("Michael", 30, "speed motto")
f2 = Follower.new("John", 23, "light motto")
f3 = Follower.new("Susan", 27, "revival motto")


bo1 = Bloodoath.new(c1, f1, 2020-06-25)
bo2 = Bloodoath.new(c2, f2, 2020-06-25)
bo3 = Bloodoath.new(c3, f1, 2020-06-25)
bo4 = Bloodoath.new(c2, f3, 2020-06-25)
bo5 = Bloodoath.new(c1, f2, 2020-06-25)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits