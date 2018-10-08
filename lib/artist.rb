class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name="")
    @name = name
    @songs = []
  end

  def add_song(song_one)
    song = Song.new(song_one)
    @songs << song.name
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist)
    find_artist = self.all.find {|a|
    a.name == artist}
    if find_artist == nil
      Artist.new(artist)
    else
      self.all.find {|artist| artist.name == artist}
    end
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
