json.array!(@occasions) do |occasion|
  json.extract! occasion, :id, :message, :name, :date, :occastion_type, :recipient_id
  json.url occasion_url(occasion, format: :json)
end
