class InsertCustomerAccountNoColumn < ActiveRecord::Migration
  
  def up
    add_column :customers, :account_no, :string
  end

  def down
    remove_column :customers, :account_no
  end

end
