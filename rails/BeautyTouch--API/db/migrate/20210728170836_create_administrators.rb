class CreateAdministrators < ActiveRecord::Migration[6.1]
  def change
    create_table :administrators do |t|
      t.int :Id_Adm
      t.string :Name1_Adm
      t.string :Name2_Adm
      t.string :LastName1_Adm
      t.string :LastName2_Adm
      t.date :Birthday_Adm
      t.int :Cellphone_Adm
      t.string :Email_Adm
      t.string :Password_Adm
      t.string :direction_Emp

      t.timestamps
    end
  end
end
