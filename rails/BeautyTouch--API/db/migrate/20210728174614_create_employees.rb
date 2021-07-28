class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.int :Id_Emp
      t.string :Name1_Emp
      t.string :Name2_Emp
      t.string :LastName1_Emp
      t.string :LastName2_Emp
      t.date :Birthday_Emp
      t.int :Cellphone_Emp
      t.string :Email_Emp
      t.string :Password_Emp
      t.string :WorkArea_Emp
      t.string :direction_Emp

      t.timestamps
    end
  end
end
