class Song 
  attr_accessor :name, :artist, :genre 
  
  # song count start @ 0, artists array, genres array
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
  end

  # method count
  def self.count
    @@count 
  end 
  
  # method genres, returns array of unique (.uniq) genres 
  #https://stackoverflow.com/questions/8365721/remove-duplicate-elements-from-array-in-ruby
  def self.genres
    @@genres.uniq 
  end   
  
  # method artists, return array of unique (.uniq) songs
  def self.artists
    @@artists.uniq
  end
  
  # method genre_count, returns a hash: keys are genre_count => value that is a count of the number of songs in the genre
  def self.genre_count
    genre_count = {} # new hash
    genre_count.each {|genre| genre_count[genre] += 1} # value key set 
    return genre_count
  end 
  
  #same as previous method, but for artist_count
  def self.artist_count
    artist_count = {} 
    artist_count.each {|artist| artist_count[artist] += 1} 
    return artist_count
  end   
  
end 
