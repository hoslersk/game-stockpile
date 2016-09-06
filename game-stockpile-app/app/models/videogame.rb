class Videogame < ApplicationRecord
  # belongs_to :videogame_collection
  # belongs_to :collection
  # belongs_to :user

  has_many :videogame_collections
  has_many :collections, through: :videogame_collections
  has_many :users, through: :collections

  #accepts_nested_attributes_for :videogame_collections#,
  # #        :reject_if => :all_blank,
  # #        :allow_destroy => true
  # accepts_nested_attributes_for :collections#, reject_if: proc { |attributes| attributes['name'].blank? }
end
