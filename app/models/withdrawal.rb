class Withdrawal < ApplicationRecord
  belongs_to :saving
  belongs_to :financialinstitution
  belongs_to :person
  belongs_to :plannedactivity
end
