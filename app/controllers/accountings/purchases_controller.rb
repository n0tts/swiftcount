class Accountings::PurchasesController < ApplicationController
respond_to :html, :xml, :json
  def index
    @purchases = Purchase.all
    respond_with(@purchases)
  end

  def show
    respond_with(@purchases)
  end

  def new
    @accounting = Accounting.find(params[:accounting_id])
    @purchase = Purchase.new
  end

  def edit
  end

  def create
    @accounting = Accounting.find(params[:accounting_id])
    @purchase = Purchase.new(purchase_params)
    @purchase.accounting = @accounting
    respond_to do |format| 
      if @accounting.save
        format.html {redirect_to @accounting, notice: 'Purchase created succesfully' }
        format.json {render action: 'show', status: :created, location: @accounting }
      else
        format.html {render action: 'new' }
        format.json {render json: @accounting.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @purchase.update(purchase_params)
    respond_with(@purchase)
  end

  def destroy
    @accounting = Accounting.find(params[:accounting_id])
    @purchase = Purchase.find(params[:id])
    title = @purchase.name
    
    if @purchase.destroy
      flash[:notice] = "\#{title} was deleted successfully."
      redirect_to @accounting
    else
      flash[:error] = "There was error deleting the purchase"
      render :show
    end
  end

  private
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end

    def purchase_params
      params.require(:purchase).permit(:name, :category, :quantity, :accounting_id)
    end
end
