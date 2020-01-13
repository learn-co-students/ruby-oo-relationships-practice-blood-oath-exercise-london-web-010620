class Follower
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age.to_i
        @life_motto = life_motto
        @@all << self
    end

    def cults
        BloodOath.all.select { |oath| oath.cult == self }
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.all
        @@all
    end 

    def self.of_a_certain_age(follower_age)
        self.all.select { |follower| follower.age >= follower_age }
    end

end
