class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :picture
      t.text :intro
      t.string :pathw
      t.string :pathl

      t.timestamps null: false
    end
  end
end
