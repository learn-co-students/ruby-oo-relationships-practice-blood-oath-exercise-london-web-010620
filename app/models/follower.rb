class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize (name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    #def cults??

    def join_cults(cult)
        new_cult = BloodOath.new(cult, self)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        all.select {|follower| follower.age >= age }
    end
  
end

