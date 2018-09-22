require "pry"

class MP3Importer
  @@all=[]
  @@paths =[]
  attr_accessor :path

  def initialize(path)
  @path = path
  @@paths << path

  end

  def files
    filelist=Dir["#{path}/*"]
    filelist_upd=filelist.map {|file| file.split('/').last}
    filelist_upd.each {|file| @@all<<file}
    @@all
  end

  def import
    filelist=Dir["#{path}/*"]
    filelist.each {|file| file=Song.new_by_filename(file)}
  end


end
