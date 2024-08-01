require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Productcategory", with: @product.ProductCategory
    fill_in "Productcode", with: @product.ProductCode
    fill_in "Productdescription", with: @product.ProductDescription
    fill_in "Productid", with: @product.ProductID
    fill_in "Productname", with: @product.ProductName
    fill_in "Productunitprice", with: @product.ProductUnitPrice
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Productcategory", with: @product.ProductCategory
    fill_in "Productcode", with: @product.ProductCode
    fill_in "Productdescription", with: @product.ProductDescription
    fill_in "Productid", with: @product.ProductID
    fill_in "Productname", with: @product.ProductName
    fill_in "Productunitprice", with: @product.ProductUnitPrice
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
