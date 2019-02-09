class Bankcard < ApplicationRecord
  belongs_to :bankaccount
  belongs_to :person
end
