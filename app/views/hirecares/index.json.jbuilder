json.array!(@hirecares) do |hirecare|
  json.extract! hirecare, :badge, :regestration_date, :fuel, :brand, :model, :smoking, :defects, :status_id, :tech_check, :comment
  json.url hirecare_url(hirecare, format: :json)
end