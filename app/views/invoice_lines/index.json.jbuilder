json.array!(@invoice_lines) do |invoice_line|
  json.extract! invoice_line, :invoice_id, :track_id, :unit_price, :quantity
  json.url invoice_line_url(invoice_line, format: :json)
end
