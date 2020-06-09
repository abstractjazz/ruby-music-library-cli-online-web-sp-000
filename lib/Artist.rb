class Artist
attr_accessor :name, :songs

  def initialize(name)
    @name = name
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

def self.count
@@all.size
end

def find_by_name(name)
    @@all.detect {|artist| artist.name = name}
end

end
