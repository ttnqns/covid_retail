class CreateOrdenes < ActiveRecord::Migration[7.0]
  def change
    create_table :ordenes do |t|
      t.references :producto, null: false, foreign_key: true
      t.references :cliente, null: false, foreign_key: true
      t.references :tipo_pago, null: false, foreign_key: true
      t.integer :monto_total

      t.timestamps
    end
  end
end
