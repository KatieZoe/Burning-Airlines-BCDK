json.extract! flight, :id, :flight_number, :origin, :destination, :departure_time, :arrival_time, :airplane_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
