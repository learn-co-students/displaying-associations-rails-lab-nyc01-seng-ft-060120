class Artist < ActiveRecord::Base
    has_many :songs

    def song_count
        self.songs.count
    end

    def songs
        Song.where(artist: self)
    end

end
