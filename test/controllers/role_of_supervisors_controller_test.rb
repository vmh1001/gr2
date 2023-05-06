require "test_helper"

class RoleOfSupervisorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @role_of_supervisor = role_of_supervisors(:one)
  end

  test "should get index" do
    get role_of_supervisors_url
    assert_response :success
  end

  test "should get new" do
    get new_role_of_supervisor_url
    assert_response :success
  end

  test "should create role_of_supervisor" do
    assert_difference("RoleOfSupervisor.count") do
      post role_of_supervisors_url, params: { role_of_supervisor: { role_of_supervisor_category: @role_of_supervisor.role_of_supervisor_category } }
    end

    assert_redirected_to role_of_supervisor_url(RoleOfSupervisor.last)
  end

  test "should show role_of_supervisor" do
    get role_of_supervisor_url(@role_of_supervisor)
    assert_response :success
  end

  test "should get edit" do
    get edit_role_of_supervisor_url(@role_of_supervisor)
    assert_response :success
  end

  test "should update role_of_supervisor" do
    patch role_of_supervisor_url(@role_of_supervisor), params: { role_of_supervisor: { role_of_supervisor_category: @role_of_supervisor.role_of_supervisor_category } }
    assert_redirected_to role_of_supervisor_url(@role_of_supervisor)
  end

  test "should destroy role_of_supervisor" do
    assert_difference("RoleOfSupervisor.count", -1) do
      delete role_of_supervisor_url(@role_of_supervisor)
    end

    assert_redirected_to role_of_supervisors_url
  end
end
