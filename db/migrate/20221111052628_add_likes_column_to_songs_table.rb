class AddLikesColumnToSongsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :likes, :integer
  end
end
