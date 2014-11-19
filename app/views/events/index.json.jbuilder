json.array!(@events) do |event|
  json.extract! event, :id, :title, :place, :startdate, :enddate, :createtime
  json.url event_url(event, format: :json)
end
