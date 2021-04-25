class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song
    @songs << songs
    song.artist = self
  end

  def songs
    @songs
  end

end
