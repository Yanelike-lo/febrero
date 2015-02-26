class ProductsController < ApplicationController
    def index
    	@productsall = Product.order("products.descripcion ASC") 
        if params[:search].present?   
          @productsall = Product.search(params[:search])
        else
          @productsall = Product.all.order('created_at DESC')
        end   
    end

    def show
      @product=Product.find(params[:id])
    end 

    def new
      @product = Product.new
      @title = "Create Product" 
    end
   
    def create
      @product = Product.new(params[:product].permit(:descripcion, :categoria, :subcategoria, :modelo, :presentacion, :fabricante, :url_fabricante, :url_driver, :url_ficha_tecnica))
        if @product.save
           flash[:notice] = "Guardado"
           redirect_to products_path
        else
          format.html { render :new }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
        
    end 

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(params[:product].permit(:descripcion, :categoria, :subcategoria, :modelo, :presentacion, :fabricante, :url_fabricante, :url_driver, :url_ficha_tecnica))
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    
  end

end
