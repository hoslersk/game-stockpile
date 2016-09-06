class Collection < ApplicationRecord
  belongs_to :user, optional: true
  has_many :videogame_collections
  has_many :videogames, through: :videogame_collections

  accepts_nested_attributes_for :videogame_collections, reject_if: proc {|attributes| attributes['collection_id'].blank?}
  accepts_nested_attributes_for :videogames, reject_if: proc {|attributes| attributes['title'].blank?}
end
