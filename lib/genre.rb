require "pry"
class Genre

    @@all = []

    attr_accessor 

    def initialize(genre)
        @genre=genre
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def name
        @genre
    end

    def artists
        songs.map do |song|
            song.artist
        end
    end

end
