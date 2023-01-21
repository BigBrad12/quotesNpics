class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.string :pic, null: true
      t.string :quote, null: true
      t.timestamps
    end
  end
end
