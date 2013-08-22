json.array!(@events) do |event|
  json.extract! event, :title, :name, :start_time
  json.url event_url(event, format: :json)
end
