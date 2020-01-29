class Song
# Class Variables  
    @@count = 0
    @@artists = []
    @@genres = []
# Class Methods
  def self.artists
    uniq_array = @@artists.uniq
    uniq_array
  end

  def self.genres
    uniq_array = @@genres.uniq
    uniq_array
  end

  def self.count
    @@count
  end

  def self.genre_count
    @@genres.to_h{|value, count| [value, count= @@genres.count(value)]}
  end

  def self.artist_count
    @@artists.to_h{|value, count| [value, count= @@artists.count(value)]}
  end
# Instance Variables
  attr_accessor :name, :artist, :genre
  
# Instance Methods
  def initialize(name, artist, genre)
    self.name= name
    self.artist= artist
    self.genre= genre
    @@count += 1 
    @@genres << genre
    @@artists << artist    
  end

end