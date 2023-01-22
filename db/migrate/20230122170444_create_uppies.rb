class CreateUppies < ActiveRecord::Migration[7.0]
  def change
    create_table :uppies do |t|
      t.belongs_to :user
      t.string :body
      t.string :wallpaper

      t.timestamps
    end
  end
end
