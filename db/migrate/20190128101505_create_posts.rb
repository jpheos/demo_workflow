class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.integer :votes
      t.string :avatar_url

      t.timestamps
    end
  end
end
