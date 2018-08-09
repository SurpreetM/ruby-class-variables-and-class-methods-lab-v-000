class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artist.each do |artist|
      if artist_count.key?(artist) == true
        artist_count[artist] += 1
      else
        artist_count [artist] = 1
    end
  end

  def self.genre_count
  end



end
