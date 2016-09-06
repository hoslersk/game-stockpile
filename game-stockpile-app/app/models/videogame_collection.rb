class VideogameCollection < ApplicationRecord
  belongs_to :collection, optional: true
  belongs_to :videogame, optional: true
  # accepts_nested_attributes_for :videogame
  # accepts_nested_attributes_for :videogame, reject_if: proc {|attributes| attributes['title'].blank?}
end
