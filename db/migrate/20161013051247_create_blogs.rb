class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :pathw
      t.string :pathl
      t.string :category
      t.text :secnario
      t.text :note
      t.integer :level
      t.boolean :tested
      t.string :referto

      t.timestamps null: false
    end
  end
end
