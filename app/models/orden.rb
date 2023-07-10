class Orden < ApplicationRecord
  belongs_to :producto
  belongs_to :cliente
  belongs_to :tipoPago
end
