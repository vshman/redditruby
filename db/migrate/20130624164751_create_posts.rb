class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :breakfast
      t.text :lunch
      t.string :display

      t.timestamps
    end
  end
end
