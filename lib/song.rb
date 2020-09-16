class Song

    @@count = 0
    @@genres = []
    @@artists = []
    
    attr_accessor :name, :artist, :genre

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
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
        genre_hash = {}
        @@genres.uniq.each do |genre_key|
            counter = 0
            @@genres.each do |genre|
                if genre == genre_key
                    counter += 1
                end
            genre_hash[genre_key] = counter
            end
        end
        return genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.uniq.each do |artist_key|
            counter = 0
            @@artists.each do |artist|
                if artist == artist_key
                    counter += 1
                end
            artist_hash[artist_key] = counter
            end
        end
        return artist_hash
    end


end