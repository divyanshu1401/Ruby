class AddColumnCommentableToComments < ActiveRecord::Migration[7.1]
  def change
    add_reference :comments, :commentable, polymorphic: true, index: true
  end
end
