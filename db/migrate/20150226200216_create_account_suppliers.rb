class CreateAccountSuppliers < ActiveRecord::Migration
  def change
    create_table :account_suppliers do |t|
      t.string :no_cuenta
      t.string :titular
      t.string :fecha_expira
      t.integer :codigo
      t.references :supplier, index: true
      t.references :bank, index: true

      t.timestamps null: false
    end
    add_foreign_key :account_suppliers, :suppliers
    add_foreign_key :account_suppliers, :banks
  end
end
