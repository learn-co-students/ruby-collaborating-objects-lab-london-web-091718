class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    # Dir.entries(@path)
    Dir.glob(@path + "/*.mp3").map {|f| f.split("mp3s/")[1]}
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
