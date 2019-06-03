require "application_system_test_case"

class PaypalsTest < ApplicationSystemTestCase
  setup do
    @paypal = paypals(:one)
  end

  test "visiting the index" do
    visit paypals_url
    assert_selector "h1", text: "Paypals"
  end

  test "creating a Paypal" do
    visit paypals_url
    click_on "New Paypal"

    fill_in "Amount", with: @paypal.amount
    fill_in "Currency", with: @paypal.currency
    fill_in "Name", with: @paypal.name
    fill_in "Status", with: @paypal.status
    fill_in "T Date", with: @paypal.t_date
    fill_in "T Time", with: @paypal.t_time
    fill_in "T Type", with: @paypal.t_type
    fill_in "Timezone", with: @paypal.timezone
    click_on "Create Paypal"

    assert_text "Paypal was successfully created"
    click_on "Back"
  end

  test "updating a Paypal" do
    visit paypals_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @paypal.amount
    fill_in "Currency", with: @paypal.currency
    fill_in "Name", with: @paypal.name
    fill_in "Status", with: @paypal.status
    fill_in "T Date", with: @paypal.t_date
    fill_in "T Time", with: @paypal.t_time
    fill_in "T Type", with: @paypal.t_type
    fill_in "Timezone", with: @paypal.timezone
    click_on "Update Paypal"

    assert_text "Paypal was successfully updated"
    click_on "Back"
  end

  test "destroying a Paypal" do
    visit paypals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paypal was successfully destroyed"
  end
end
