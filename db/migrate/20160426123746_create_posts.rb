class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :img
      t.text :content

      t.timestamps null: false
    end
  end
end
