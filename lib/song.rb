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
    #saves it to the @@all class 
    #or through song.all
    #return song instance that was saved
    end
  
  
  def new_by_name
    song = self.new 
    song.name = name 
    song
    #takes name of song 
    #returns song instance with that name set as name property
    #should return instance of song 
    #should not return a simple string 
    
    #song = Song.new_by_name("The Middle")
    song.name #=> "The Middle"
  end 
    
    
  def create_by_name 
    song = self.new 
    song.name = name 
    @@all << song 
    song 
    #takes string name of song 
    #returns song instance with name set as name property 
    #song saved to @@all 
    
    #song = Song.create_by_name ("The Middle")
    #Song.all.include?(song)
  end
    
    
  def find by name 
      @@all.find{|x| x.name == name}
    #takes string name of song 
    #returns matching instance of song with name 
    
    #the_middle = Song.create_by_name("The Middle")
    #Song.find_by_name("The Middle")
  end 
    
  def find_or_create_by_name 
    self.find
    #takes string name 
    #return matching song instance with name 
    #or
    #create new song with the name 
    #and 
    #return the song instance 
    
    #song_1 = Song.find_or_create_by_name("Blank Space")
    #song_2 = Song.find_or_create_by_name("blank Space")
    
    #song_1 == song_2 
    #=> true 
  end
  
  def alphabetical 
      #returns all songs in ascending order a-z
      #use array sort_by 
  end
  
  def new_from_filename 
    #description is way too long like damn 
  end

  def create_from_filename 
    #read description
  end
  
  def destroy_all
    #reset state of @@all to an empty array 
    #deletes all previous song instances 
  end
  
