json.array!(@vinhos) do |vinho|
  json.extract! vinho, :id, :nome, :ano, :tipo, :foto, :descricao, :avaliacao
  json.url vinho_url(vinho, format: :json)
end
