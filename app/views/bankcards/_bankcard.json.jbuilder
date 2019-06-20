json.extract! bankcard, :id, :bankaccount_id, :person_id, :card_number, :expiry_date, :security_code, :active, :note, :created_at, :updated_at
json.url bankcard_url(bankcard, format: :json)
