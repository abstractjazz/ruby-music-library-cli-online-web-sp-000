class Song
attr_accessor :name, :songs

extend Concerns::Findable

@@all = [ ]

  def initialize(name, artist=nil, genre=nil)
    @name = name
save
  end

  def save
  @@all << self
  end

  def self.all
  @@all
  end

  # def self.destroy_all
  # @@all.clear
  # end


end
