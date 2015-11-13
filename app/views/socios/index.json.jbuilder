json.array!(@socios) do |socio|
  json.extract! socio, :id, :name, :document, :lastname, :email, :password, :numberpoints
  json.url socio_url(socio, format: :json)
end
