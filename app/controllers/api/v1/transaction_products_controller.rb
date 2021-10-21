class Api::V1::TransactionProductsController < ApplicationController
  skip_before_action :authorized

  before_action :set_transaction_product, only: [:show, :update, :destroy]

  # GET /transaction_products
  def index
    @transaction_products = TransactionProduct.all

    render json: @transaction_products
  end

  # GET /transaction_products/1
  def show
    render json: @transaction_product
  end

  # POST /transaction_products
  def create
    @transaction_product = TransactionProduct.new(transaction_product_params)

    if @transaction_product.save
      render json: @transaction_product, status: :created, location: @transaction_product
    else
      render json: @transaction_product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transaction_products/1
  def update
    if @transaction_product.update(transaction_product_params)
      render json: @transaction_product
    else
      render json: @transaction_product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transaction_products/1
  def destroy
    @transaction_product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction_product
      @transaction_product = TransactionProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transaction_product_params
      params.fetch(:transaction_product, {})
    end
end
