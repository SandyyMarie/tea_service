class Tea < ApplicationRecord
  has_many :subscriptions
  has_many :customers, through: :subscriptions
  
  validates_presence_of :first_name, :last_name, :email, :address

end