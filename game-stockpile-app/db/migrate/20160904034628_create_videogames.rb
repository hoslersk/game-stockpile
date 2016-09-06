class CreateVideogames < ActiveRecord::Migration[5.0]
  def change
    create_table :videogames do |t|
      t.string :title
      t.string :studio
      t.string :platform
      t.integer :avg_hours
      t.integer :metacritic_score

      t.timestamps
    end
  end
end
