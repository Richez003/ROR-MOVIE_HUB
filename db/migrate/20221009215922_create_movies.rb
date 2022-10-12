class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.datetime :starts_at

      t.timestamps
    end
  end
end
