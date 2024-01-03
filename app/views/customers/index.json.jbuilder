json.array!(@customers) do |customer|
  json.extract! customer, :first_name, :last_name, :company, :address, :city, :state, :country, :postal_code, :phone, :fax, :email, :support_rep_id
  json.url customer_url(customer, format: :json)
end
