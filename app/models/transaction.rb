class Transaction < ApplicationRecord
  belongs_to :cashflow
  belongs_to :outflowtype
  belongs_to :person
end
