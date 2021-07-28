class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.int :Id_Cli
      t.string :Name1_cli
      t.string :Name2_Cli
      t.string :LastName1_Cli
      t.string :LastName2_Cli
      t.date :Birthay_Cli
      t.int :Cellphone_Cli
      t.string :Email_Cli
      t.string :Password_Cli
      t.string :direction_Emp

      t.timestamps
    end
  end
end
