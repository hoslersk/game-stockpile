class VideogameCollection < ApplicationRecord
  belongs_to :collection
  belongs_to :videogame
  # accepts_nested_attributes_for :videogame
end
