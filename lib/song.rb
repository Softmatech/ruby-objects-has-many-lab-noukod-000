class Song
  attr_accessor :artist, :name, :genre

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
      @artist == nil ? nil : @artist.name
  end
end
