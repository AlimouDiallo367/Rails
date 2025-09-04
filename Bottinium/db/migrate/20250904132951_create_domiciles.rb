# Thierno Alimou Diallo 

class CreateDomiciles < ActiveRecord::Migration[8.0]
  def change
    create_table :domiciles do |t|
      t.integer :numero, null: false
      t.string :rue, null: false
      t.string :ville, null: false
      t.string :province, null: false

      t.timestamps
    end
  end
end
