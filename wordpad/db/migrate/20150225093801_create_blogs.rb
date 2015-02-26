class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :content
      t.integer :language_id
      t.integer :user_id
      t.string :status
      t.string :title

      t.timestamps null: false
    end
  end
end
