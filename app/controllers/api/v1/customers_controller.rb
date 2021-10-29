class Api::V1::CustomersController < ApplicationController
  skip_before_action :authorized
  before_action :set_customer, only: [:show, :update, :destroy]

  # GET /customers
  def index
    @customers = Customer.all
    render json: @customers
  end

  # GET /customers/1
  def show
    render json: @customer
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer, status: :created
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  def get_current_customer
    if customer_selected?
      render json: current_customer, status: :ok
    else
      render json: { message: ["No Customer Selected"]}, status: :ok
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :date_of_birth, :address, :phone_number, :email, :user_id)
    end
end
