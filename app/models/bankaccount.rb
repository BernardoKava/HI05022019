class Bankaccount < ApplicationRecord
  belongs_to :financialinstitution
  belongs_to :person
  has_many   :outflows
  has_many   :inflows
  has_many   :bankcards, dependent: :destroy

  accepts_nested_attributes_for :bankcards, allow_destroy: true

end
