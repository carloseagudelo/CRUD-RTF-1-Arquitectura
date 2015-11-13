json.array!(@chairs) do |chair|
  json.extract! chair, :id, :numberChairP, :numberChairG, :occupiedP, :occupiedG, :seat_id
  json.url chair_url(chair, format: :json)
end
