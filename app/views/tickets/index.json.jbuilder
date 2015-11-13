json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :socio_id_id, :totalpricepoints, :totalpricecredit, :totalpoints
  json.url ticket_url(ticket, format: :json)
end
