class Song

  attr_accessor :name, :artist, :all

  @@all=[]

  def initialize(name="")
    @name=name
    @@all<<self
  end

def artist
  @artist
end

def self.new_by_filename(filename)
  song=self.new
  puts self
  puts "--------"
  puts song.name
  puts "--------"
  puts song.artist
  song.name = filename.split(" - ")[1]
  song.artist = filename.split(" - ")[0]
  song.artist = Artist.new(song.artist)
  song.artist.add_song(song)
  Artist.all << song.artist
  song
end


end
