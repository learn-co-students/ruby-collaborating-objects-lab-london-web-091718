class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @directory = []
    @directory << self
  end

  def files
    Dir['./spec/fixtures/mp3s/*'].map {|song|
   song.split("./spec/fixtures/mp3s/")[1]}

  #.each do |file|
    #   File.directory? file['./spec/fixtures/mp3/']
    # end

  end

  def import
    files.select do |filename|
    Song.new_by_filename(filename)
    end
  end

end
