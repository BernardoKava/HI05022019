class Outflowtype < ApplicationRecord
  has_many :expenses
  has_many :outflows
  has_many :transactions

end
