class Song 
  
  attr_reader :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@genres_hash = {}
  @@artists = []
  @@artists_hash = {}
  
  
  def initialize(name, artist, genre)
    @@count += 1 
    @name = name 
    @artist = artist 
    @genre = genre
    
    @@artists << @artist
    @@genres << @genre 
    
  end 
  
  def self.count
    @@count
  end 
  
  def self.artists
    artist_array = []
    @@artists.map do |artist|
      if artist_array.include?(artist) == false 
        artist_array << artist
      end
    end 
    return artist_array
  end 
  
  def self.genres
    genre_array = []
    @@genres.map do |genre|
      if genre_array.include?(genre) == false 
        genre_array << genre
      end
    end 
    return genre_array
  end 
  
  def self.genre_count
     @@genres.map do |genre|
      if @@genres_hash.include?(genre)
        @@genres_hash[genre] += 1 
      else 
        @@genres_hash[genre] = 1 
      end 
    end 
    return @@genres_hash
  end 
  
  def self.artist_count
     @@artists.map do |artist|
      if @@artists_hash.include?(artist)
        @@artists_hash[artist] += 1 
      else 
        @@artists_hash[artist] = 1 
      end 
    end 
    return @@artists_hash
  end 
  
  
  
end 