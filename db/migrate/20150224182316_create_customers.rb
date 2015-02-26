class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :razon_social
      t.string :tipo
      t.string :rfc
      t.integer :cp
      t.string :calle
      t.string :colonia
      t.string :ciudad
      t.string :no_exterior
      t.string :no_interior
      t.string :estado
      t.string :pais
      t.string :sitio_web
      t.string :telefono
      t.string :movil
      t.string :email

      t.timestamps null: false
    end
  end
end
