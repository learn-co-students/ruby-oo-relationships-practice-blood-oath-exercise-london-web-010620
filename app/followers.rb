class Follower 

    attr_reader :name, :age, :life_motto

    @@all = []

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
        Bloodoath.all.select {|oath| oath.follower == self}
        .map {|oath| oath.cult}
    end

    def join_cult(cult)
        Bloodoath.new(cult, self)
    end

    def self.of_certain_age(age)
        self.all.select {|follower| follower.age >= age}
    end

end