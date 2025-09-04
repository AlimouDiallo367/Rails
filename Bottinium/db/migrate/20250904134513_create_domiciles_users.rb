# Thierno Alimou Diallo 

class CreateDomicilesUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :domiciles_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :domicile, null: false, foreign_key: true

      # t.timestamps
    end
  end
end
