json.extract! producto, :id, :nombre, :precio, :descripcion, :cantidad, :created_at, :updated_at
json.url producto_url(producto, format: :json)
