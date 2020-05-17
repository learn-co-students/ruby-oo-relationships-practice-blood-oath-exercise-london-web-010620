class Follower
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def join_cult(cult)
        BloodOath.new(cult, self)

        #find cult name << self
    end

    def self.all 
        @@all
    end
    
    def self.of_a_certain_age(num)
        Follower.all.select {|followers| followers.age < num}
    end
end

