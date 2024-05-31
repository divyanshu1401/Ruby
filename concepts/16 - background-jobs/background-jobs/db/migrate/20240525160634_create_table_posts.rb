class CreateTablePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :table_posts do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
