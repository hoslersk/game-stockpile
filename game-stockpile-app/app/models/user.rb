class User < ApplicationRecord
  has_many :collections
  has_many :videogame_collections, through: :collections
  has_many :videogames, through: :videogame_collections
  has_secure_password
  # accepts_nested_attributes_for :videogames, reject_if: proc { |attributes| attributes['title'].blank? }

end
