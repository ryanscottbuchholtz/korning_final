class Sale < ActiveRecord::Base

  belongs_to :employee
  belongs_to :customer
  belongs_to :product
  belongs_to :frequency

end
