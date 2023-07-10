class CreateTipoPagos < ActiveRecord::Migration[7.0]
  def change
    create_table :tipo_pagos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
