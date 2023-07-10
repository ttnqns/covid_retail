class CreateProductos < ActiveRecord::Migration[7.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :precio
      t.string :descripcion
      t.integer :cantidad

      t.timestamps
    end
  end
end
