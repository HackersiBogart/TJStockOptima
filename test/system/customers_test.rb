require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "should create customer" do
    visit customers_url
    click_on "New customer"

    fill_in "Customer email", with: @customer.customer_email
    fill_in "Customer first name", with: @customer.customer_first_name
    fill_in "Customer ID", with: @customer.customer_id
    fill_in "Customer last name", with: @customer.customer_last_name
    fill_in "Customer phone number", with: @customer.customer_phone_number
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "should update Customer" do
    visit customer_url(@customer)
    click_on "Edit this customer", match: :first

    fill_in "Customer email", with: @customer.customer_email
    fill_in "Customer first name", with: @customer.customer_first_name
    fill_in "Customer ID", with: @customer.customer_id
    fill_in "Customer last name", with: @customer.customer_last_name
    fill_in "Customer phone number", with: @customer.customer_phone_number
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer" do
    visit customer_url(@customer)
    click_on "Destroy this customer", match: :first

    assert_text "Customer was successfully destroyed"
  end
end
