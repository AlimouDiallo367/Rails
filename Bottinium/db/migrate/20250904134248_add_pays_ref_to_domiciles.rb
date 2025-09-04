# Thierno Alimou Diallo 

class AddPaysRefToDomiciles < ActiveRecord::Migration[8.0]
  def change
    add_reference :domiciles, :pays, null: false, foreign_key: true, index: true
  end
end
