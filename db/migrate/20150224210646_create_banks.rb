class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :clave
      t.string :nombre_corto
      t.string :razon_social

      t.timestamps null: false
    end
  end
end
