require 'pry'

class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
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
    result = {}
    @@genres.each do |genre|
      result[genre] ? result[genre] += 1 : result[genre] = 1 
    end
    result
  end
  
  def self.artist_count
    result = {}
    @@artists.each do |artist|
      result[artist] ? result[artist] += 1 : result[artist] = 1 
    end
    result
  end
end 