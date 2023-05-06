require "application_system_test_case"

class ParkingFeesTest < ApplicationSystemTestCase
  setup do
    @parking_fee = parking_fees(:one)
  end

  test "visiting the index" do
    visit parking_fees_url
    assert_selector "h1", text: "Parking fees"
  end

  test "should create parking fee" do
    visit parking_fees_url
    click_on "New parking fee"

    fill_in "Parking fee description", with: @parking_fee.parking_fee_description
    fill_in "Parking fee mone", with: @parking_fee.parking_fee_money
    fill_in "Parking fee type", with: @parking_fee.parking_fee_type
    click_on "Create Parking fee"

    assert_text "Parking fee was successfully created"
    click_on "Back"
  end

  test "should update Parking fee" do
    visit parking_fee_url(@parking_fee)
    click_on "Edit this parking fee", match: :first

    fill_in "Parking fee description", with: @parking_fee.parking_fee_description
    fill_in "Parking fee mone", with: @parking_fee.parking_fee_money
    fill_in "Parking fee type", with: @parking_fee.parking_fee_type
    click_on "Update Parking fee"

    assert_text "Parking fee was successfully updated"
    click_on "Back"
  end

  test "should destroy Parking fee" do
    visit parking_fee_url(@parking_fee)
    click_on "Destroy this parking fee", match: :first

    assert_text "Parking fee was successfully destroyed"
  end
end
