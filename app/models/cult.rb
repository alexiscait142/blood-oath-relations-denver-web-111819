class Cult
    attr_reader :title, :location, :founding_year, :slogan

    @@all = []
    
    def initialize title, location, founding_year, slogan
        @title = title
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def blood_oaths
        BloodOath.all.select do |blood_oath|
            if blood_oath.cult == self
                puts blood_oath
            end
        end
    end

    def followers
        blood_oaths.map do |blood_oath|
           blood_oath.follower
        end
    end

    def self.all
        @@all
    end
end