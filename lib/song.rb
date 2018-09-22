require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name="")
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    song.artist = filename.split(" - ")[0]
    song.artist = Artist.new(song.artist)
    song.artist.add_song(song)
    Artist.all << song.artist
    song
  end

end

p 'eof'
