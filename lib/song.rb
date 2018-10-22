class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(name)
    song = self.new
    song.name = name
    self.class.all << self
  end

  def self.create(name)
    @name = name
    self.class.all
  end
end
