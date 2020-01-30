class Song
attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
     def initialize(name, artist, genre)
       @@count += 1
       @name = name
       @@artists << @artist = artist
      @@genres << @genre = genre
     end

     def self.count
       @@count
     end

     def self.artists
       @@artists.uniq!
     end

     def self.genres
       @@genres.uniq!
     end

     def self.genre_count
       genre_count = {}
       @@genres.each do |i|
          if genre_count.key?(i)
            genre_count[i]+=1
          else
            genre_count[i] = 1
          end
        end
        genre_count
     end

     def self.artist_count
       artist_count = {}

       @@artists.each do |i|

        if artist_count.key?(i)
          artist_count[i] +=1
        else
          artist_count[i] = 1
        end
      end
      artist_count
    end
end
