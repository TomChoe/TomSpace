class AddIndexTomspace < ActiveRecord::Migration[5.1]
  def change
  	add_index :posts, :user_id
  	add_index :comments, :user_id
  	add_index :comments, :post_id
  end
end
