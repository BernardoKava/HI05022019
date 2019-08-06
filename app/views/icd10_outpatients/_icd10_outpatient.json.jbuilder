json.extract! icd10_outpatient, :id, :diagnosis_code, :short_description, :medium_description, :long_description, :notes, :created_at, :updated_at
json.url icd10_outpatient_url(icd10_outpatient, format: :json)
