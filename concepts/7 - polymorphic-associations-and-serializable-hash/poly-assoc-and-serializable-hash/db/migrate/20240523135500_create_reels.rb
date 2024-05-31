class CreateReels < ActiveRecord::Migration[7.1]
  def change
    create_table :reels do |t|
      t.string :imageUrl
      t.string :caption

      t.timestamps
    end
  end
end
