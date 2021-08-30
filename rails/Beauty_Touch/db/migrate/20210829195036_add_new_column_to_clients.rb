class AddNewColumnToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :birthday_Cli, :date
  end
end
