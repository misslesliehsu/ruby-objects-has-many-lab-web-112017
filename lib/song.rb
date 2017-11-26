class Song

attr_accessor :name, :artist

@@songs = []

def initialize(name)
  @name = name
  @@songs << self
end


def artist_name
  @artist.name if @artist
end

def self.all
  @@songs
end

end
