class Song

    attr_accessor :name, :artist, :genre 

    @@count = 0 
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
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
        genres = {}
        @@genres.each {|genre| 
        if genres.include?(genre)
            genres[genre] += 1
        else
            genres[genre] = 1
        end
        }
        genres
    end

    def self.artist_count
        artists = {}
        @@artists.each {|artist| 
        if artists.include?(artist)
            artists[artist] += 1
        else
            artists[artist] = 1
        end
        }
        artists
    end
end
