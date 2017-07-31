class Asset < ApplicationRecord
  belongs_to :office
  belongs_to :user
  belongs_to :order
end
