class Artist

attr_accessor :name, :songs

@@song_count = 0

def initialize(artist_name)
  @name = artist_name
  #name(name)
  #name=(name)
  @songs = []
end


def add_song(song)
  song.artist = self
  @songs << song
  @@song_count += 1
end

#instead of the add_song method, which has to be preceded with the song's existence in the first place under the Song class...
def add_song_by_name(song_name)
  song = Song.new(song_name)
  song.artist = self
  @songs << song
  @@song_count += 1
end

def self.song_count
  @@song_count
end

end
