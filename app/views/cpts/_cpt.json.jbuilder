json.extract! cpt, :id, :cpt_code, :clinician_descriptor_id, :clinician_descriptor, :consumer_friendly_descriptor, :notes, :created_at, :updated_at
json.url cpt_url(cpt, format: :json)
