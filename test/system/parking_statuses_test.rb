require "application_system_test_case"

class ParkingStatusesTest < ApplicationSystemTestCase
  setup do
    @parking_status = parking_statuses(:one)
  end

  test "visiting the index" do
    visit parking_statuses_url
    assert_selector "h1", text: "Parking statuses"
  end

  test "should create parking status" do
    visit parking_statuses_url
    click_on "New parking status"

    fill_in "Car", with: @parking_status.car_id
    fill_in "Customer", with: @parking_status.customer_id
    fill_in "Parking fee", with: @parking_status.parking_fee_id
    fill_in "Parking slot", with: @parking_status.parking_slot_id
    fill_in "Permission", with: @parking_status.permission_id
    click_on "Create Parking status"

    assert_text "Parking status was successfully created"
    click_on "Back"
  end

  test "should update Parking status" do
    visit parking_status_url(@parking_status)
    click_on "Edit this parking status", match: :first

    fill_in "Car", with: @parking_status.car_id
    fill_in "Customer", with: @parking_status.customer_id
    fill_in "Parking fee", with: @parking_status.parking_fee_id
    fill_in "Parking slot", with: @parking_status.parking_slot_id
    fill_in "Permission", with: @parking_status.permission_id
    click_on "Update Parking status"

    assert_text "Parking status was successfully updated"
    click_on "Back"
  end

  test "should destroy Parking status" do
    visit parking_status_url(@parking_status)
    click_on "Destroy this parking status", match: :first

    assert_text "Parking status was successfully destroyed"
  end
end
