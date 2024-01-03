json.array!(@employees) do |employee|
  json.extract! employee, :first_name, :last_name, :title, :reports_to, :birthdate, :hiredate, :address, :city, :state, :country, :postal_code, :phone, :fax, :email
  json.url employee_url(employee, format: :json)
end
