class CreateCommentComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :comment, index: true
      t.text :text
      t.integer :position # position = id + 1 
      t.timestamps
    end
  end
end
