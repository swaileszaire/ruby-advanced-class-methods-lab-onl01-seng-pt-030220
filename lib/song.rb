class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(song)
    song = self.new
    song
    end
  
  
  def new_by_name
    song = self.new 
    song.name = name 
    song
  end 
    
    
  def create_by_name 
    song = self.new 
    song.name = name 
    @@all << song 
    song 
  end
    
    
  def find_by_name 
      @@all.find{|x| x.name == name}
  end 
    
  def find_or_create_by_name 
    self.find_by_name || self.create_by_name 
  end
  
  def alphabetical 
     @@all.sort_by{|x| x.name}
  end
  
  def new_from_filename 
     song = self.new 
    song.name = (name.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (name.split(" - ")[0])
    song
  end

  def create_from_filename 
     song = self.new
    song.name = (name.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (name.split(" - ")[0])
    @@all << song
    song
  end
  
  def destroy_all
    @@all.clear
  end
  
