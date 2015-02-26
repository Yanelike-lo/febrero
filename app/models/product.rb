class Product < ActiveRecord::Base
def self.search(search) 
  @productsall=Product.where("descripcion LIKE ? OR categoria LIKE ? OR subcategoria LIKE ? OR modelo LIKE ? OR fabricante LIKE ?", "%#{search}%","%#{search}%" ,"%#{search}%","%#{search}%","%#{search}%")
end 
end
