require "application_system_test_case"

class PreordersTest < ApplicationSystemTestCase
  setup do
    @preorder = preorders(:one)
  end

  test "visiting the index" do
    visit preorders_url
    assert_selector "h1", text: "Preorders"
  end

  test "should create preorder" do
    visit preorders_url
    click_on "New preorder"

    fill_in "Color", with: @preorder.color
    fill_in "Quantity", with: @preorder.quantity
    fill_in "Target date", with: @preorder.target_date
    click_on "Create Preorder"

    assert_text "Preorder was successfully created"
    click_on "Back"
  end

  test "should update Preorder" do
    visit preorder_url(@preorder)
    click_on "Edit this preorder", match: :first

    fill_in "Color", with: @preorder.color
    fill_in "Quantity", with: @preorder.quantity
    fill_in "Target date", with: @preorder.target_date
    click_on "Update Preorder"

    assert_text "Preorder was successfully updated"
    click_on "Back"
  end

  test "should destroy Preorder" do
    visit preorder_url(@preorder)
    click_on "Destroy this preorder", match: :first

    assert_text "Preorder was successfully destroyed"
  end
end
