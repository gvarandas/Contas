json.array!(@despesas) do |despesa|
  json.extract! despesa, :id, :nome, :valor, :recorrente, :mes_ref, :ano_ref, :usr_pag
  json.url despesa_url(despesa, format: :json)
end
