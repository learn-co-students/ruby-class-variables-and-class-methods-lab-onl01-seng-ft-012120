class Song
  attr_accessor :artist, :name, :genre
  
  @@count = 0 
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    
    @@genres << genre
    @@artists << artist
    
    if @@genre_count.include?(genre)
      @@genre_count[genre] += 1
      
    else 
      @@genre_count[genre] = 1
    end 
    
    if @@artist_count.include?(artist)
      @@artist_count[artist] += 1
      
    else 
      @@artist_count[artist] = 1
    end 
  end 
  
  def self.count
    return @@count
  end
  
  def self.artist_count
    return @@artist_count
  end 
  
  def self.genre_count
    return @@genre_count
  end
  
  def self.genres
    return @@genres.uniq
  end 
  
  def self.artists
    return @@artists.uniq
  end 
end 