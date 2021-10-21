require "test_helper"

class SaleProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale_product = sale_products(:one)
  end

  test "should get index" do
    get sale_products_url, as: :json
    assert_response :success
  end

  test "should create sale_product" do
    assert_difference('SaleProduct.count') do
      post sale_products_url, params: { sale_product: { product_id: @sale_product.product_id, sale_id: @sale_product.sale_id } }, as: :json
    end

    assert_response 201
  end

  test "should show sale_product" do
    get sale_product_url(@sale_product), as: :json
    assert_response :success
  end

  test "should update sale_product" do
    patch sale_product_url(@sale_product), params: { sale_product: { product_id: @sale_product.product_id, sale_id: @sale_product.sale_id } }, as: :json
    assert_response 200
  end

  test "should destroy sale_product" do
    assert_difference('SaleProduct.count', -1) do
      delete sale_product_url(@sale_product), as: :json
    end

    assert_response 204
  end
end
