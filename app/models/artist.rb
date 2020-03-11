class Artist < ActiveRecord::Base
  # add associations here
  has_many :songs

  def self.find_or_create_by(name)
    if Artist.find_by(name)
      artist = Artist.find_by(name)
    else
      artist = Artist.create(name)
    end
  end
end
