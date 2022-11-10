class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.integer :album_id
      t.string :iframe_url
    end
  end
end
