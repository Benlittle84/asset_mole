class Address < ApplicationRecord
  belongs_to :office
  belongs_to :supplier
end
