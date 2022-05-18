class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1    
        end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq 
    end

    def self.genre_count
        genres_hash = {}
        @@genres.each do |genre|
            if genres_hash[genre]
                genres_hash[genre] += 1
            else
                genres_hash[genre] = 1
            end
        end
        pp genres_hash
        genres_hash
    end


    def self.artist_count
        artist_hash = {}
        @@artists.uniq.each do |artist|
            artist_hash[artist] = @@artists.count(artist)
        end
        artist_hash
    end






end