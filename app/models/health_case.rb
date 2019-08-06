class HealthCase < ApplicationRecord
  belongs_to :cpt
  belongs_to :icd10_inpatient
  belongs_to :icd10_outpatient
  belongs_to :medical_personel
  belongs_to :medical_establishment
  belongs_to :person
end
