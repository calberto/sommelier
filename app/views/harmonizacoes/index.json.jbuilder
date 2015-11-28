json.array!(@harmonizacoes) do |harmonizaco|
  json.extract! harmonizaco, :id, :vinho_id, :prato_id
  json.url harmonizaco_url(harmonizaco, format: :json)
end
