class CreateAdministrators < ActiveRecord::Migration[6.1]
  def change
    create_table :administrators do |t|
      t.integer :id_Adm
      t.string :name1_Adm
      t.string :name2_Adm
      t.string :lastName1_Adm
      t.string :lastName2_Adm
      t.date :birthday_Adm
      t.integer :Cellphone_Adm
      t.string :Email_Adm
      t.string :Password_Adm
      t.string :Direction_Adm

      t.timestamps
    end
  end
end
