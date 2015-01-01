json.array!(@accountings) do |accounting|
  json.extract! accounting, :id, :date, :company, :tax, :salesperson
  json.url accounting_url(accounting, format: :json)
end
