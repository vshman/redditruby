class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :breakfast
      t.text :lunch
      t.text :dinner

      t.timestamps
    end
  end
end
