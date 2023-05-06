require "test_helper"

class ParkingStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_status = parking_statuses(:one)
  end

  test "should get index" do
    get parking_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_status_url
    assert_response :success
  end

  test "should create parking_status" do
    assert_difference("ParkingStatus.count") do
      post parking_statuses_url, params: { parking_status: { car_id: @parking_status.car_id, customer_id: @parking_status.customer_id, parking_fee_id: @parking_status.parking_fee_id, parking_slot_id: @parking_status.parking_slot_id, permission_id: @parking_status.permission_id } }
    end

    assert_redirected_to parking_status_url(ParkingStatus.last)
  end

  test "should show parking_status" do
    get parking_status_url(@parking_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_status_url(@parking_status)
    assert_response :success
  end

  test "should update parking_status" do
    patch parking_status_url(@parking_status), params: { parking_status: { car_id: @parking_status.car_id, customer_id: @parking_status.customer_id, parking_fee_id: @parking_status.parking_fee_id, parking_slot_id: @parking_status.parking_slot_id, permission_id: @parking_status.permission_id } }
    assert_redirected_to parking_status_url(@parking_status)
  end

  test "should destroy parking_status" do
    assert_difference("ParkingStatus.count", -1) do
      delete parking_status_url(@parking_status)
    end

    assert_redirected_to parking_statuses_url
  end
end
