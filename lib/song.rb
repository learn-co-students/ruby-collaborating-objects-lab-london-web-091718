require 'pry'

class Song

  attr_accessor :name, :artist, :songs

  def initialize(name="")
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new
    filename = filename.split(' - ')
    song.artist = filename[0]
    song.artist = Artist.new(song.artist)
    song.artist.add_song(song)
    Artist.all << song.artist
    song.name = filename[1]
    return song


    # binding.pry
    # new_song.artist = self
  end

end

puts 'eof'
