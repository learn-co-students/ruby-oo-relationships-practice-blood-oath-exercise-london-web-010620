require 'date'

class BloodOath

    attr_accessor :initiation_date, :cult, :follower

    @@all = []

    def initialize(cult, follower)
        @initiation_date = Date.today.to_s
        @@all << self
    end

    def self.all
        @@all
    end
end