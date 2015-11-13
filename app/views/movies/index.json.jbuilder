json.array!(@movies) do |movie|
  json.extract! movie, :id, :horary_id, :hall_id, :name, :duration, :information, :dimension, :quality_id, :chair_id
  json.url movie_url(movie, format: :json)
end
