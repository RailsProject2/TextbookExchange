class BuyPost < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :isbn, presence: true
  validates :user, presence: true
end
