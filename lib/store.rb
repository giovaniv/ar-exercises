class Store < ActiveRecord::Base
  has_many :employee
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, :greater_than_or_equal_to => 0 }
  validates :womens_apparel, presence: {unless: :mens_apparel?}
  validates :mens_apparel, presence: {unless: :womens_apparel?}
end