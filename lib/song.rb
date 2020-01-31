class Song 
    @@count = 0
    @@genres = []
    @@artists = []
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end 
  
  attr_reader :name, :artist, :genre
  
  def self.count 
    @@count
  end 
  
  def self.genres
     @@genres.uniq.compact
  end 
  
  def self.artists
    @@artists.uniq.compact
  end 
  
  def self.genre_count
    hash = {}
    @@genres.each do |word|
     if  hash[word] 
       hash[word] += 1
     else
       hash[word] = 1
     end 
   end
   hash
 end 
 
 def self.artist_count
   hash ={}
   @@artists.each do |word|
     if hash[word]
       hash[word] +=  1
      else 
        hash[word] = 1
      end 
    end 
    hash
 end
 
 
end
