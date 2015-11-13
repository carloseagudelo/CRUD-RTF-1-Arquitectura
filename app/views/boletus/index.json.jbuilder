json.array!(@boletus) do |boletu|
  json.extract! boletu, :id, :movie_id, :ticket_id, :pricecredit, :pricepoints, :numberpoints, :typeboletus
  json.url boletu_url(boletu, format: :json)
end
