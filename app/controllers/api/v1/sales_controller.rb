class Api::V1::SalesController < ApplicationController
  skip_before_action :authorized
  before_action :set_sale, only: [:show, :update, :destroy]

  # GET /sales
  def index
    @customer = Customer.find_by(id: params[:customer_id])
    if @customer 
      @sales = @customer.sales
      render json: @sales
    else
      render json: { error: "No Customer"}
    end
  end

  # GET /sales/1
  def show
    render json: @sale
  end

  # POST /sales
  def create
    @sale = Sale.create(sale_params)
    if @sale.valid?
      render json: @sale, status: :created
    else
      render json: @sale.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sale_params
      params.permit(:total, :date, :user_id, :customer_id, product_ids: [])
    end
    
end
