require "application_system_test_case"

class CashboxesTest < ApplicationSystemTestCase
  setup do
    @cashbox = cashboxes(:one)
  end

  test "visiting the index" do
    visit cashboxes_url
    assert_selector "h1", text: "Cashboxes"
  end

  test "creating a Cashbox" do
    visit cashboxes_url
    click_on "New Cashbox"

    fill_in "Accounting Date", with: @cashbox.accounting_date
    fill_in "Active", with: @cashbox.active
    fill_in "Balance", with: @cashbox.balance
    fill_in "Month", with: @cashbox.month
    fill_in "Name", with: @cashbox.name
    fill_in "Notes", with: @cashbox.notes
    fill_in "Year", with: @cashbox.year
    click_on "Create Cashbox"

    assert_text "Cashbox was successfully created"
    click_on "Back"
  end

  test "updating a Cashbox" do
    visit cashboxes_url
    click_on "Edit", match: :first

    fill_in "Accounting Date", with: @cashbox.accounting_date
    fill_in "Active", with: @cashbox.active
    fill_in "Balance", with: @cashbox.balance
    fill_in "Month", with: @cashbox.month
    fill_in "Name", with: @cashbox.name
    fill_in "Notes", with: @cashbox.notes
    fill_in "Year", with: @cashbox.year
    click_on "Update Cashbox"

    assert_text "Cashbox was successfully updated"
    click_on "Back"
  end

  test "destroying a Cashbox" do
    visit cashboxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cashbox was successfully destroyed"
  end
end
