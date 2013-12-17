class Sale < ActiveRecord::Base

  has_one :employee
  has_one :customer
  has_one :product
  has_one :frequency

  belongs_to :employee
  belongs_to :customer
  belongs_to :product
  belongs_to :frequency

end
