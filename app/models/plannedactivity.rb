class Plannedactivity < ApplicationRecord
  has_many :lodgements , dependent: :destroy
  has_many :withdrawals , dependent: :destroy
  belongs_to :person
end
