class Order < ApplicationRecord
  belongs to :supplier
  has_many :assets
  has_many :order_scans
end
