class Card < ActiveRecord::Base
  attr_accessible :expiration_month, :expiration_year, :number, :security_code
  
  belongs_to :user
end
