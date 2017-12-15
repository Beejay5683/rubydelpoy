class Song < ActiveRecord::Base

  belongs_to :user
  has_many :playlists
  has_many :users, through: :playlists



  validates :title, :artist, 
  	presence: true, 
  	length: { minimum: 2 }
  	
end
