json.array!(@transfers) do |transfer|
  json.extract! transfer, :id, :usr_pagante, :usr_destino, :valor
  json.url transfer_url(transfer, format: :json)
end
