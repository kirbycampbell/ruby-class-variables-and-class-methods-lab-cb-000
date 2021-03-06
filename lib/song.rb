class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

    def initialize(name, artist, genre)
        @@count += 1
          @name = name
          @artist = artist
          @genre = genre
        @@genres << genre
        @@artists << artist
    end

    def self.count
      @@count
    end

    def self.genres
      @@genres.uniq
    end

    def self.artists
      @@artists.uniq
    end

    def self.genre_count
      Hash[*@@genres.group_by{ |s| s }.flat_map{ |s, n| [s, n.size] }]
    end

    def self.artist_count
      Hash[*@@artists.group_by{ |s| s }.flat_map{ |s, n| [s, n.size] }]
    end

end
