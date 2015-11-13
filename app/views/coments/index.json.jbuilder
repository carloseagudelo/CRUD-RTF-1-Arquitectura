json.array!(@coments) do |coment|
  json.extract! coment, :id, :socio_id, :movie_id, :coment
  json.url coment_url(coment, format: :json)
end
