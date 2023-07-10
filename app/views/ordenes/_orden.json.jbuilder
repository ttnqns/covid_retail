json.extract! orden, :id, :producto_id, :cliente_id, :tipoPago_id, :monto_total, :created_at, :updated_at
json.url orden_url(orden, format: :json)
