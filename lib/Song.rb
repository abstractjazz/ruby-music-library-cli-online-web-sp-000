class Song
attr_accessor :name, :songs
@@all = [ ]

  def initialize
save
  end

  def save
  @@all << self
  end

  def self.all
  @@all
  end

  def self.reset_all
  @@all.clear
  end

end
