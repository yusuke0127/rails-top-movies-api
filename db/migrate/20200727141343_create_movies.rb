class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :cast, array: true, default: []
      t.string :director
      t.text :storyline
      t.string :year
      t.string :genre, array: true, default: []
      t.float :rating

      t.timestamps
    end
  end
end
