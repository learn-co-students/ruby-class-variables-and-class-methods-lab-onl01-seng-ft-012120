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
    temp_arr = []
    @@artists.each do |artist|
     if !temp_arr.include?(artist)
       temp_arr << artist
     end
    end
    return temp_arr
  end
  
  def self.genres 
    temp_arr = []
    @@genres.each do |genre|
      if !temp_arr.include?(genre)
        temp_arr << genre
      end
    end
    return temp_arr
  end
  
  def self.genre_count
    temp_hash = {}
    @@genres.each do |genre|
      if temp_hash[genre]
        temp_hash[genre] += 1 
      else
        temp_hash[genre] = 1 
      end
    end
    return temp_hash
  end
  
  def self.artist_count
    temp_hash = {}
    @@artists.each do |artist|
      if temp_hash[artist]
        temp_hash[artist] += 1 
      else
        temp_hash[artist] = 1 
      end
    end
    return temp_hash
  end
  
end