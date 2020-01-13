require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

d = Cult.new("steve", "uk", "1993", "don't eat")
e = Follower.new("Jeff", 87, "yolo")
a = Cult.new("John", "Greece", "1986", "run")
f = Follower.new("Sam", 13, "hot")
w = BloodOath.new(d, e)
r = BloodOath.new(a, f)
q = BloodOath.new(d, f)
y = q = BloodOath.new(a, e)




 binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
