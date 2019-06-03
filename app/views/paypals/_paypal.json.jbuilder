json.extract! paypal, :id, :t_date, :t_time, :timezone, :name, :t_type, :status, :currency, :amount, :created_at, :updated_at
json.url paypal_url(paypal, format: :json)
