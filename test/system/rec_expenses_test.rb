require "application_system_test_case"

class RecExpensesTest < ApplicationSystemTestCase
  setup do
    @rec_expense = rec_expenses(:one)
  end

  test "visiting the index" do
    visit rec_expenses_url
    assert_selector "h1", text: "Rec Expenses"
  end

  test "creating a Rec expense" do
    visit rec_expenses_url
    click_on "New Rec Expense"

    fill_in "Expense", with: @rec_expense.expense_id
    fill_in "Frequency", with: @rec_expense.frequency
    fill_in "Name", with: @rec_expense.name
    click_on "Create Rec expense"

    assert_text "Rec expense was successfully created"
    click_on "Back"
  end

  test "updating a Rec expense" do
    visit rec_expenses_url
    click_on "Edit", match: :first

    fill_in "Expense", with: @rec_expense.expense_id
    fill_in "Frequency", with: @rec_expense.frequency
    fill_in "Name", with: @rec_expense.name
    click_on "Update Rec expense"

    assert_text "Rec expense was successfully updated"
    click_on "Back"
  end

  test "destroying a Rec expense" do
    visit rec_expenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rec expense was successfully destroyed"
  end
end
