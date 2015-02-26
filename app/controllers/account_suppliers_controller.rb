class AccountSuppliersController < ApplicationController
  def index
    @title = "AccountSupplier"
    @account_suplliersall = AccountSupplier.all 
  end

  def show
    @account_supplier = AccountSupplier.find(params[:id])
    @title = "Contact :" + @account_supplier.fullname
  end

  def edit
    @account_supplier = AccountSupplier.find(params[:id])
  end

  def new
    @account_supplier = AccountSupplier.new
    @title = "Create Contact"
  end  


  def create 
    @account_supplier = AccountSupplier.new(params[:account_supplierp].permit(:no_cuenta, :titular, :fecha_expira, :codigo))
    if @account_supplier.save
           flash[:notice] = "Guardado"
           redirect_to suppliers_path
        else
          format.html { render :new }
          format.json { render json: @supplier.errors, status: :unprocessable_entity }
        end
  end
end


