class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song if !@songs.include?(song)
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.map {|a| a.name}.include?(name)
      existing_artist = @@all.find {|a| a.name == name}
      existing_artist.name = name
      existing_artist
    else
      Artist.new(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
