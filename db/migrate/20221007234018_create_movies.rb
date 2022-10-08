class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.integer :rating
      t.integer :price

      t.timestamps
    end
  end
end
