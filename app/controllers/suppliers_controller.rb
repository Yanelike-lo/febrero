class SuppliersController < ApplicationController
    def index
    	@suppliersall = Supplier.order("products.descripcion ASC") 
        if params[:search].present?   
          @suppliersall = Supplier.search(params[:search])
        else
          @suppliersall = Supplier.all.order('created_at DESC')
        end   
    end

    def show
      @supplier=Product.find(params[:id])
    end 

    def new
      @title = "Create Supplier" 
      @supplier = Supplier.new
      1.times  {@supplier.account_suppliers.build}     
    end 
    def create
      @supplier = Supplier.new(supplier_params)

        if @supplier.save
           flash[:notice] = "Guardado"
           redirect_to suppliers_path
        else
          format.html { render :new }
          format.json { render json: @supplier.errors, status: :unprocessable_entity }
        end        
    end 

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    @supplier = Supplier.find(params[:id])
    if @supplier.update(params[:supplier].permit(:razon_social, :tipo, :rfc, :cp, :calle, :colonia, :ciudad, :no_exterior, :no_interior, :estado, :pais, :sitio_web, :telefono, :movil, :email))
      redirect_to @supplier
    else
      render 'edit'
    end
  end

  def destroy
    
  end

def addaccount
@supplier = Supplier.new
1.times  {@supplier.account_suppliers.build}     
end

  private
  def supplier_params
    params.require(:supplier).permit(:razon_social, :tipo, :rfc, :cp, :calle, :colonia, :ciudad, :no_exterior, :no_interior, :estado, :pais, :sitio_web, :telefono, :movil, :email , account_suppliers_attributes: [:no_cuenta, :titular])
  end

end
 