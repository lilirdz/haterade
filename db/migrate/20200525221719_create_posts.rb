class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.integer :category_id
      t.text :content

      t.timestamps
    end
  end
end
