class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.integer :release_year
      t.string :system

      t.timestamps
    end
  end
end
