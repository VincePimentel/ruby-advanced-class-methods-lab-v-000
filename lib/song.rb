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
    self.all << self
  end

  def self.create(name)
    self.save
    self.all
  end
end
