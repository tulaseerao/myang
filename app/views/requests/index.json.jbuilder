json.array!(@requests) do |request|
  json.extract! request, :id, :request_type, :requester, :organization, :site, :unit, :start_date, :end_date, :notes
  json.url request_url(request, format: :json)
end
