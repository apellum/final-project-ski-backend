class Api::V1::SaleProductsController < ApplicationController
  before_action :set_sale_product, only: [:show, :update, :destroy]

  # GET /sale_products
  def index
    @sale_products = SaleProduct.all

    render json: @sale_products
  end

  # GET /sale_products/1
  def show
    render json: @sale_product
  end

  # POST /sale_products
  def create
    @sale_product = SaleProduct.new(sale_product_params)

    if @sale_product.save
      render json: @sale_product, status: :created, location: @sale_product
    else
      render json: @sale_product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sale_products/1
  def update
    if @sale_product.update(sale_product_params)
      render json: @sale_product
    else
      render json: @sale_product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sale_products/1
  def destroy
    @sale_product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_product
      @sale_product = SaleProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sale_product_params
      params.require(:sale_product).permit(:product_id, :sale_id)
    end
end
