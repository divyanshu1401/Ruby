class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :imageUrl
      t.string :caption

      t.timestamps
    end
  end
end
