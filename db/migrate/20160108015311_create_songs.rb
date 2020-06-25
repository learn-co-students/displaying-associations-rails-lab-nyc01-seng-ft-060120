class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title

      t.timestamps null: false
      t.integer :artist_id
    end
  end
end
