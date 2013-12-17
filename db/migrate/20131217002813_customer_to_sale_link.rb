class CustomerToSaleLink < ActiveRecord::Migration

  def up
    add_column :sales, :customer_id, :integer

      Sale.all.each do |sale|
        customer = Customer.where(name: sale.customer_and_account_no).first
          
          if customer.nil?
          customer = Customer.create!(name: sale.customer_and_account_no)
          
          end

        sale.customer_id = customer.id
        sale.save!
  end

def down
  remove_column :sales, :customer_id
end

  end
end
