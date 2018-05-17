require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(song_name, song_artist, song_genre)
    @name = song_name
    @@count += 1

    @artist = song_artist
    @@artists << song_artist

    @genre = song_genre
    @@genres << song_genre

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    # You will need to iterate over the @@genres array and populate a hash with the key/value pairs.
    # You will need to check to see if the hash already contains a key of a particular genre.
    # If so, increment the value of that key by one,
    #   otherwise, create a new key/value pair.
    @@genre_counter = Hash.new
      @@genres.each do |genre|
        if @@genre_counter.include?(genre)
          @@genre_counter[genre] += 1
        else
          @@genre_counter[genre] = 1
        end
      end
    @@genre_counter

    # @@genre_counter = @@genres.collect do |genre|
    #   @@genre_counter.include?(genre) ? @@genre_counter[genre] +=1 : @@genre_counter[genre] = 1
  end

  def self.artist_count
    # You will need to iterate over the @@genres array and populate a hash with the key/value pairs.
    # You will need to check to see if the hash already contains a key of a particular genre.
    # If so, increment the value of that key by one,
    #   otherwise, create a new key/value pair.
    artist_counter = Hash.new
      @@artists.each do |artist|
        if artist_counter.include?(artist)
           artist_counter[artist] += 1
        else
           artist_counter[artist] = 1
        end
      end
    artist_counter
    # @@genre_counter = @@genres.collect do |genre|
    #   @@genre_counter.include?(genre) ? @@genre_counter[genre] +=1 : @@genre_counter[genre] = 1
  end

end
