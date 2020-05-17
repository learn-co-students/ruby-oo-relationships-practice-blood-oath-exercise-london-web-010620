require 'date'
class BloodOath

    attr_reader :cult, :follower, :date

    @@all = []

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @date = Date.today.to_s
        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        f_oath = @@all.sort_by { |oath| oath.date }[-1]
        f_oath.follower
    end

end