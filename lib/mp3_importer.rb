require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @directory = []
    @directory << self
    # binding.pry
  end

  def files
    Dir['./spec/fixtures/mp3s/*'].each do |file|
      File.directory? file['./spec/fixtures/mp3s/'] = ''
    end
  end

  def import
    files.select do |filename|
      Song.new_by_filename(filename)
    end
  end

end

p 'eof'
