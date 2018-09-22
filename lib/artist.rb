require "pry"
class Artist
  @@all=[]
  attr_accessor :name, :songs, :all



  def initialize(name)
    @songs =[]
    @name = name
  end


  def add_song(song_one)
    song=Song.new(song_one)
    @songs << song.name
  end

  def self.all
    @@all
  end

  def save
    @@all<<self
  end

  def self.find_or_create_by_name(name)
    real = @@all.find{|artistt| artistt.name == name}
    self.new(name) if !real
  end

  def print_songs
    puts @songs.map {|song| song.name}
  #  binding.pry
  end


p "eod"

end
