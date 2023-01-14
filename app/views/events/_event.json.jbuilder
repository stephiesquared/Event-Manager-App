json.extract! event, :id, :title, :category, :description, :location, :latitude, :longitude, :date, :created_at, :updated_at
json.url event_url(event, format: :json)
