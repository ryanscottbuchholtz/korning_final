class FrequencyToSaleLink < ActiveRecord::Migration
  
  def up
  add_column :sales, :frequency_id, :integer

    Sale.all.each do |sale|
      frequency = Frequency.where(name: sale.invoice_frequency).first
        
        if frequency.nil?
        frequency = Frequency.create!(name: sale.invoice_frequency)
        
        end

      sale.frequency_id = frequency.id
      sale.save!
    end
  end

  def down
  remove_column :sales, :frequency_id
  end

end
