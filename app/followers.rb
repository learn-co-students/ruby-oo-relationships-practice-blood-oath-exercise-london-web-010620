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

    #This is done by me
    def bloodoaths
        Bloodoath.all.select {|oath| oath.follower == self}
    end
    
    #returns an `Array` of this follower's cults
    def cults 
        bloodoaths.map {|oath| oath.cult}
    end

    #takes in an argument of a `Cult` instance and adds this follower to the cult's list of followers
    def join_cult(cult)
        Bloodoath.new(cult, self)
    end

    #takes an `Integer` argument that is an age and returns an `Array` of followers who are the given age or older
    def self.of_certain_age(age)
        self.all.select {|follower| follower.age >= age}
    end

    #prints out all of the slogans for this follower's cults
    def my_cults_slogans
        slogans = []
        blood = bloodoaths.map {|oath| oath.cult}
        blood.each do |bl| 
             slogans << bl.slogan
            #binding.pry
        end
        puts slogans
    end

    #returns the `Follower` instance who has joined the most cults
    def self.most_active

    end

    #returns an `Array` of followers; they are the ten most active followers
    def self.top_ten

    end

    #returns a unique `Array` of followers who are in the same cults as you
    def fellow_cult_members

    end

    #takes in an argument of a `Cult` instance and adds this follower to the cult's list of followers
    #NOW this is changed such that if you don't meet the minimum age requirement of the given
    # - do not let them join the cult
    # - print out a friendly message informing them that they are too young
    def join_cult 

    end

    
end