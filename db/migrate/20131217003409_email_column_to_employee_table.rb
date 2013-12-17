class EmailColumnToEmployeeTable < ActiveRecord::Migration
  
  def up
    add_column :employees, :email_address, :string
  end

  def down
    remove_column :employees, :email_address
  end

end
