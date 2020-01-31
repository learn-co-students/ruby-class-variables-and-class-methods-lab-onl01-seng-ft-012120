class Song
  @@names = []
  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}
  def initialize (song,artist,genre)
    artistcountval = @@artist_count[artist]
    genrecountval = @@genre_count[genre]
    @@artist_count[artist] = 1 if artistcountval == nil
    @@artist_count[artist] = (artistcountval + 1) if artistcountval != nil
    @@genre_count[genre] = 1 if genrecountval == nil
    @@genre_count[genre] = (genrecountval + 1) if genrecountval != nil
    @@names.push(song)
    @@artists.push(artist)
    @@genres.push(genre)
    @@count += 1
    @@name = song
    @@artist = artist
    @@genre = genre
  end
  def name
    @@name
  end
  def artist
    @@artist
  end
  def genre
    @@genre
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq!
  end
  def self.genres
    @@genres.uniq!
  end
  def self.genre_count
    @@genre_count
  end
  def self.artist_count
    @@artist_count
  end
end

hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
hit_me.name
hit_me.artist
hit_me.genre
