json.extract! transaction, :id, :t_date, :details, :amount, :rationale, :note, :cashbox_id, :person_id, :outflowtype_id, :cashflow_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
