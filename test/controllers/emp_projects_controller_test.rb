require 'test_helper'

class EmpProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emp_project = emp_projects(:one)
  end

  test "should get index" do
    get emp_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_emp_project_url
    assert_response :success
  end

  test "should create emp_project" do
    assert_difference('EmpProject.count') do
      post emp_projects_url, params: { emp_project: { employee_id: @emp_project.employee_id, project_id: @emp_project.project_id } }
    end

    assert_redirected_to emp_project_url(EmpProject.last)
  end

  test "should show emp_project" do
    get emp_project_url(@emp_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_emp_project_url(@emp_project)
    assert_response :success
  end

  test "should update emp_project" do
    patch emp_project_url(@emp_project), params: { emp_project: { employee_id: @emp_project.employee_id, project_id: @emp_project.project_id } }
    assert_redirected_to emp_project_url(@emp_project)
  end

  test "should destroy emp_project" do
    assert_difference('EmpProject.count', -1) do
      delete emp_project_url(@emp_project)
    end

    assert_redirected_to emp_projects_url
  end
end
