require 'pry'

class Song 
  attr_accessor :song, :artist, :genre
  @@count = 0 
  @@artist << []
  @@genre << []


def initialize (song,artist,genre)
  @song= song
  @artist= artist
  @genre = genre
   @@count += 1 
  @@artist << artist
  @@genre << genre 
  end
  
def self.count
  @@count
end

def self.artist
  @@artist
end

def self.genre
  @@genre
end

def self.artist_count
  artist_count ={}
  @@artist.each do |artist|
    if artist_count[artist]
      artist_count[artist] += 1 
    else
      artist_count[artist] = 1 
    end
    artist_count
  end
    
    def self.genre_count
  genre_count ={}
  @@genre.each do |genre|
    if genre_count[genre]
      genre_count[genre] += 1 
    else
      genre_count[genre] = 1 
end
genre_count
end
  
  
  