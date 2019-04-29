class Song
  attr_accessor :artist, :name, :genre

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name(name)
      @@all[name]
  end
end
