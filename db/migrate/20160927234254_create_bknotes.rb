class CreateBknotes < ActiveRecord::Migration
  def change
    create_table :bknotes do |t|
      t.integer :book_id
      t.string :name
      t.integer :page
      t.string :unit
      t.text :note
      t.text :practice
      t.string :referdoc
      t.string :referurl

      t.timestamps null: false
    end
  end
end
