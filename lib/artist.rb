class Artist

  attr_accessor :name, :songs, :all

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    song = Song.new(song)
    @songs << song.name
  end

  def self.find_or_create_by_name(artist)
     existed_artist = @@all.find {|art| art.name == artist}
     self.new(artist) if !existed_artist
  end

  def save
    @@all << self
  end

  def print_songs
    puts @songs.map {|song| song.name}
  end

end
