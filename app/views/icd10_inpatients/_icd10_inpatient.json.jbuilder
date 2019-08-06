json.extract! icd10_inpatient, :id, :diagnosis_code, :short_description, :medium_description, :long_description, :notes, :created_at, :updated_at
json.url icd10_inpatient_url(icd10_inpatient, format: :json)
