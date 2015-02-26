class RenameDatabaseColumn < ActiveRecord::Migration
  def change
  end

  def self.up
	rename_column :products, :serie, :presentacion
  end
	
	def self.down
	rename_column :products, :presentacion, :serie
	end
end
