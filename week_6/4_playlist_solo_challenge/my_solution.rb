# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode



# Initial Solution

class Song
  attr_accessor :song, :musician
  def initialize(song, musician)
    @song = song
    @musician = musician
  end

  def play
    puts "♫♪♫  Now playing: #{@musician} - #{@song} ♫♪♫"
  end

  def display
    puts "#{@musician} - #{@song}"
  end

end

class Playlist < Song
  attr_accessor :songs
  def initialize(*songs)
    @songs = songs
  end

  def add(*songs)
    songs.each { |song| @songs << song }
  end

  def num_of_tracks
    return @songs.count
  end

  def remove(song)
    @songs.delete(song)
  end

  def includes?(song)
    @songs.include?(song)
  end

  def play_all
    @songs.each { |song| song.play }
  end

  def display
    puts "Current Playlist"
    puts "Artist:      Title:"
    @songs.each { |song| song.display }
  end
end

# Refactored Solution





# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display




# Reflection
