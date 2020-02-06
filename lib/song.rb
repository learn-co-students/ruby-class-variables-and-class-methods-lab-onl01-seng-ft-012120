class Song
# Class Variables  
    @@count = 0
    @@artists = []
    @@genres = []
# Class Methods
  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    @@genres.to_h{|value, count| [value, count= @@genres.count(value)]} # count only have readability purposes
  end

  def self.artist_count
    @@artists.to_h{|value, count| [value, count= @@artists.count(value)]} # count only have readability purposes
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