class CreateReviewsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :song_id
      t.integer :user_id
    end
  end
end
