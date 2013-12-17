class EmployeeToSaleLink < ActiveRecord::Migration

  def up
    add_column :sales, :employee_id, :integer

      Sale.all.each do |sale|
        employee = Employee.where(name: sale.employee).first
          
          if employee.nil?
          employee = Employee.create!(name: sale.employee)
          
          end

        sale.employee_id = employee.id
        sale.save!
  end

def down
  remove_column :sales, :employee_id
end

  end
end