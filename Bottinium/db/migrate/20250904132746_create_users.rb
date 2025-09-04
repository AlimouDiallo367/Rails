# Thierno Alimou Diallo 

class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :nom, null: false
      t.string :prenom, null: false
      t.string :telephone, null: false

      t.timestamps
    end
  end
end
