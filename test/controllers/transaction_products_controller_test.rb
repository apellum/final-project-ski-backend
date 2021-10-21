require "test_helper"

class TransactionProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction_product = transaction_products(:one)
  end

  test "should get index" do
    get transaction_products_url, as: :json
    assert_response :success
  end

  test "should create transaction_product" do
    assert_difference('TransactionProduct.count') do
      post transaction_products_url, params: { transaction_product: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show transaction_product" do
    get transaction_product_url(@transaction_product), as: :json
    assert_response :success
  end

  test "should update transaction_product" do
    patch transaction_product_url(@transaction_product), params: { transaction_product: {  } }, as: :json
    assert_response 200
  end

  test "should destroy transaction_product" do
    assert_difference('TransactionProduct.count', -1) do
      delete transaction_product_url(@transaction_product), as: :json
    end

    assert_response 204
  end
end
