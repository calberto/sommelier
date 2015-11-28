json.array!(@pratos) do |prato|
  json.extract! prato, :id, :nome
  json.url prato_url(prato, format: :json)
end
