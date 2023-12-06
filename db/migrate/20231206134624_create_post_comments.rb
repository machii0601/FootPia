class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|
      t.references :user
      t.references :post
      t.text :post_comment
      t.timestamps
    end
  end
end
