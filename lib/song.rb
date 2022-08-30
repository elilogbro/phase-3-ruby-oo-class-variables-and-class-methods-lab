require 'pry'

class Song

    attr_accessor :genre, :name, :artist

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name, artist, genre)
        @genre = genre
        @artist = artist
        @name = name
        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end



end

