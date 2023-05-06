require "application_system_test_case"

class ParkingSlotsTest < ApplicationSystemTestCase
  setup do
    @parking_slot = parking_slots(:one)
  end

  test "visiting the index" do
    visit parking_slots_url
    assert_selector "h1", text: "Parking slots"
  end

  test "should create parking slot" do
    visit parking_slots_url
    click_on "New parking slot"

    fill_in "Parking slot description", with: @parking_slot.parking_slot_description
    fill_in "Parking slot type", with: @parking_slot.parking_slot_type
    click_on "Create Parking slot"

    assert_text "Parking slot was successfully created"
    click_on "Back"
  end

  test "should update Parking slot" do
    visit parking_slot_url(@parking_slot)
    click_on "Edit this parking slot", match: :first

    fill_in "Parking slot description", with: @parking_slot.parking_slot_description
    fill_in "Parking slot type", with: @parking_slot.parking_slot_type
    click_on "Update Parking slot"

    assert_text "Parking slot was successfully updated"
    click_on "Back"
  end

  test "should destroy Parking slot" do
    visit parking_slot_url(@parking_slot)
    click_on "Destroy this parking slot", match: :first

    assert_text "Parking slot was successfully destroyed"
  end
end
