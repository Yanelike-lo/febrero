class Supplier < ActiveRecord::Base
has_many :account_suppliers, :dependent => :destroy  
accepts_nested_attributes_for :account_suppliers
def self.search(search) 
  @suppliersall=Product.where("descripcion LIKE ? OR categoria LIKE ? OR subcategoria LIKE ? OR modelo LIKE ? OR fabricante LIKE ?", "%#{search}%","%#{search}%" ,"%#{search}%","%#{search}%","%#{search}%")
end 
end
