class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.integer :id_Cli
      t.string :name1_Cli
      t.string :name2_Cli
      t.string :lastName1_Cli
      t.string :lastName2_Cli
      t.integer :cellphone_Cli
      t.string :direction_Cli

      t.timestamps
    end
  end
end
