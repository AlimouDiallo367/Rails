# Thierno Alimou Diallo 

class CreatePays < ActiveRecord::Migration[8.0]
  def change
    create_table :pays do |t|
      t.string :nom, null: false

      t.timestamps
    end
  end
end
