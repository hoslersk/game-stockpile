class CreateVideogameCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :videogame_collections do |t|
      t.integer :videogame_id
      t.integer :collection_id
      t.boolean :complete?

      t.timestamps
    end
  end
end
