class CreateTipoClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :tipo_clientes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
