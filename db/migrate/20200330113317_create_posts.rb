class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :text
      t.string :category_id , foreign_key: true
      t.text :video
      t.timestamps
    end
  end
end
