require 'test_helper'

class RecExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rec_expense = rec_expenses(:one)
  end

  test "should get index" do
    get rec_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_rec_expense_url
    assert_response :success
  end

  test "should create rec_expense" do
    assert_difference('RecExpense.count') do
      post rec_expenses_url, params: { rec_expense: { expense_id: @rec_expense.expense_id, frequency: @rec_expense.frequency, name: @rec_expense.name } }
    end

    assert_redirected_to rec_expense_url(RecExpense.last)
  end

  test "should show rec_expense" do
    get rec_expense_url(@rec_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_rec_expense_url(@rec_expense)
    assert_response :success
  end

  test "should update rec_expense" do
    patch rec_expense_url(@rec_expense), params: { rec_expense: { expense_id: @rec_expense.expense_id, frequency: @rec_expense.frequency, name: @rec_expense.name } }
    assert_redirected_to rec_expense_url(@rec_expense)
  end

  test "should destroy rec_expense" do
    assert_difference('RecExpense.count', -1) do
      delete rec_expense_url(@rec_expense)
    end

    assert_redirected_to rec_expenses_url
  end
end
