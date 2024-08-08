json.extract! customer, :id, :customer_id, :customer_first_name, :customer_last_name, :customer_email, :customer_phone_number, :created_at, :updated_at
json.url customer_url(customer, format: :json)
