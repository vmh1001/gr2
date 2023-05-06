require "test_helper"

class ParkingFeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_fee = parking_fees(:one)
  end

  test "should get index" do
    get parking_fees_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_fee_url
    assert_response :success
  end

  test "should create parking_fee" do
    assert_difference("ParkingFee.count") do
      post parking_fees_url, params: { parking_fee: { parking_fee_description: @parking_fee.parking_fee_description, parking_fee_money: @parking_fee.parking_fee_money, parking_fee_type: @parking_fee.parking_fee_type } }
    end

    assert_redirected_to parking_fee_url(ParkingFee.last)
  end

  test "should show parking_fee" do
    get parking_fee_url(@parking_fee)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_fee_url(@parking_fee)
    assert_response :success
  end

  test "should update parking_fee" do
    patch parking_fee_url(@parking_fee), params: { parking_fee: { parking_fee_description: @parking_fee.parking_fee_description, parking_fee_money: @parking_fee.parking_fee_money, parking_fee_type: @parking_fee.parking_fee_type } }
    assert_redirected_to parking_fee_url(@parking_fee)
  end

  test "should destroy parking_fee" do
    assert_difference("ParkingFee.count", -1) do
      delete parking_fee_url(@parking_fee)
    end

    assert_redirected_to parking_fees_url
  end
end
