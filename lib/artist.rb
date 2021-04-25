class Artist

  attr_accessor :name, :song
  attr_reader :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def song_count
    self.songs.size
  end
end
