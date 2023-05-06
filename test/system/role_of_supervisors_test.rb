require "application_system_test_case"

class RoleOfSupervisorsTest < ApplicationSystemTestCase
  setup do
    @role_of_supervisor = role_of_supervisors(:one)
  end

  test "visiting the index" do
    visit role_of_supervisors_url
    assert_selector "h1", text: "Role of supervisors"
  end

  test "should create role of supervisor" do
    visit role_of_supervisors_url
    click_on "New role of supervisor"

    fill_in "Role of supervisor category", with: @role_of_supervisor.role_of_supervisor_category
    click_on "Create Role of supervisor"

    assert_text "Role of supervisor was successfully created"
    click_on "Back"
  end

  test "should update Role of supervisor" do
    visit role_of_supervisor_url(@role_of_supervisor)
    click_on "Edit this role of supervisor", match: :first

    fill_in "Role of supervisor category", with: @role_of_supervisor.role_of_supervisor_category
    click_on "Update Role of supervisor"

    assert_text "Role of supervisor was successfully updated"
    click_on "Back"
  end

  test "should destroy Role of supervisor" do
    visit role_of_supervisor_url(@role_of_supervisor)
    click_on "Destroy this role of supervisor", match: :first

    assert_text "Role of supervisor was successfully destroyed"
  end
end
