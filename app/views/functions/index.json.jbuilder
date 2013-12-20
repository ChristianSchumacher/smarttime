json.array!(@functions) do |function|
  json.extract! function, :appointment_date, :start_time, :end_time, :allocated_at, :work_id, :work_time, :customer_id, :hire_car_id, :direct_contact, :customer_service_agreement, :data_privacy_statement
  json.url function_url(function, format: :json)
end