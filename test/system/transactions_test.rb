require "application_system_test_case"

class TransactionsTest < ApplicationSystemTestCase
  setup do
    @transaction = transactions(:one)
  end

  test "visiting the index" do
    visit transactions_url
    assert_selector "h1", text: "Transactions"
  end

  test "creating a Transaction" do
    visit transactions_url
    click_on "New Transaction"

    fill_in "Amount", with: @transaction.amount
    fill_in "Cashbox", with: @transaction.cashbox_id
    fill_in "Cashflow", with: @transaction.cashflow_id
    fill_in "Details", with: @transaction.details
    fill_in "Note", with: @transaction.note
    fill_in "Outflowtype", with: @transaction.outflowtype_id
    fill_in "Person", with: @transaction.person_id
    fill_in "Rationale", with: @transaction.rationale
    fill_in "T Date", with: @transaction.t_date
    click_on "Create Transaction"

    assert_text "Transaction was successfully created"
    click_on "Back"
  end

  test "updating a Transaction" do
    visit transactions_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @transaction.amount
    fill_in "Cashbox", with: @transaction.cashbox_id
    fill_in "Cashflow", with: @transaction.cashflow_id
    fill_in "Details", with: @transaction.details
    fill_in "Note", with: @transaction.note
    fill_in "Outflowtype", with: @transaction.outflowtype_id
    fill_in "Person", with: @transaction.person_id
    fill_in "Rationale", with: @transaction.rationale
    fill_in "T Date", with: @transaction.t_date
    click_on "Update Transaction"

    assert_text "Transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Transaction" do
    visit transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transaction was successfully destroyed"
  end
end
