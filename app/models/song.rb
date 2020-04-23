class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
    artist.name
    end
  end

  def artist_name=(name)
        artists = Artist.find_or_create_by(name: name)
        self.artist = artists
  end
end
