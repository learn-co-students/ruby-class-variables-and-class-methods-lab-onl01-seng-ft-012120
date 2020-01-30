class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@count += 1
    @@artists << artist
  end
  attr_accessor :name, :artist, :genre
  def self.artists
    artists_array = []
    @@artists.each do |artist|
      artists_array << artist
    end
    artists_array.uniq!
  end
  def self.genres
    genres_array = []
    @@genres.each do |genre|
      genres_array << genre 
    end
    genres_array.uniq!
  end
        
  def self.genre_count
    genre_count = {}
    counter = 1
    @@genres.each do |genre|
      if genre_count.key?(genre)
        genre_count[genre] = counter + 1
        counter += 1
      else
        genre_count[genre] = 1 
      end
    end
    genre_count
  end
  def self.artist_count
    artist_count ={}
    counter = 1
    @@artists.each do |artist|
      if artist_count.key?(artist)
        artist_count[artist] = counter + 1
        counter += 1
      else
        artist_count[artist] = 1 
      end
    end
    artist_count
  end
  def self.count
    @@count
  end
end

