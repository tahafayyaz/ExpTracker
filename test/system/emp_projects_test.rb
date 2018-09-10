require "application_system_test_case"

class EmpProjectsTest < ApplicationSystemTestCase
  setup do
    @emp_project = emp_projects(:one)
  end

  test "visiting the index" do
    visit emp_projects_url
    assert_selector "h1", text: "Emp Projects"
  end

  test "creating a Emp project" do
    visit emp_projects_url
    click_on "New Emp Project"

    fill_in "Employee", with: @emp_project.employee_id
    fill_in "Project", with: @emp_project.project_id
    click_on "Create Emp project"

    assert_text "Emp project was successfully created"
    click_on "Back"
  end

  test "updating a Emp project" do
    visit emp_projects_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @emp_project.employee_id
    fill_in "Project", with: @emp_project.project_id
    click_on "Update Emp project"

    assert_text "Emp project was successfully updated"
    click_on "Back"
  end

  test "destroying a Emp project" do
    visit emp_projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emp project was successfully destroyed"
  end
end
