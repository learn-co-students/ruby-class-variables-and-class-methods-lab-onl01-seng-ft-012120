class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
        
        @@count += 1
        @name = name

        @artist = artist
        @@artists << @artist

        @genre = genre
        @@genres << @genre


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
        genres_hash = Hash.new

        @@genres.each do |genre|
            if genres_hash.has_key?(genre)
                genres_hash[genre] += 1
            else
                genres_hash[genre] = 1
            end
        end
        genres_hash
    end

    def self.artist_count
        artist_hash = Hash.new

        @@artists.each do |artist|
            if artist_hash.has_key?(artist)
                artist_hash[artist] += 1
            else
                artist_hash[artist] = 1
            end
        end
        artist_hash
    end
end