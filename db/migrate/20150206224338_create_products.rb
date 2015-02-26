class CreateProducts < ActiveRecord::Migration
  
  def change 
    create_table :products do |t|
      t.string :descripcion
      t.string :categoria
      t.string :subcategoria
      t.string :modelo
      t.string :presentacion
      t.string :fabricante
      t.string :url_fabricante
      t.string :url_driver
      t.string :url_ficha_tecnica
      t.timestamps null: false
    end    
  end 

def self.up
rename_column :products, :serie, :presentacion
end

end
