class RenamePostsTable < ActiveRecord::Migration[7.1]
  def change
    rename_table :table_posts, :posts
  end
end
