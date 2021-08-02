class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.integer :id_Cli
      t.string :name1_Cli
      t.string :name2_Cli
      t.string :lastName1_cli
      t.string :lastName2_cli
      t.date :birthday_Cli
      t.integer :Cellphone_Cli
      t.string :Email_Cli
      t.string :Password_Cli
      t.string :Direction_Cli

      t.timestamps
    end
  end
end
