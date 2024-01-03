json.array!(@invoices) do |invoice|
  json.extract! invoice, :customer_id, :invoice_date, :billing_address, :billing_city, :billing_state, :billing_country, :billing_postal_code, :total
  json.url invoice_url(invoice, format: :json)
end
