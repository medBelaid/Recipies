class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :content
      t.integer :rate
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
