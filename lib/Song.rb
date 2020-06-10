class Song
attr_accessor :name, :songs

extend Concerns::Findable

@@all = [ ]

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end


  def save
  @@all << self
  end

  def self.all
  @@all
  end

  def self.destroy_all
  @@all.clear
  end

  def save
  @@all << self
  end

  def self.create(song)
  song = self.new(song)
  song.save
  song
  end

end
