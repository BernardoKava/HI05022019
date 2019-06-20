require 'test_helper'

class CashboxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cashbox = cashboxes(:one)
  end

  test "should get index" do
    get cashboxes_url
    assert_response :success
  end

  test "should get new" do
    get new_cashbox_url
    assert_response :success
  end

  test "should create cashbox" do
    assert_difference('Cashbox.count') do
      post cashboxes_url, params: { cashbox: { accounting_date: @cashbox.accounting_date, active: @cashbox.active, balance: @cashbox.balance, month: @cashbox.month, name: @cashbox.name, notes: @cashbox.notes, year: @cashbox.year } }
    end

    assert_redirected_to cashbox_url(Cashbox.last)
  end

  test "should show cashbox" do
    get cashbox_url(@cashbox)
    assert_response :success
  end

  test "should get edit" do
    get edit_cashbox_url(@cashbox)
    assert_response :success
  end

  test "should update cashbox" do
    patch cashbox_url(@cashbox), params: { cashbox: { accounting_date: @cashbox.accounting_date, active: @cashbox.active, balance: @cashbox.balance, month: @cashbox.month, name: @cashbox.name, notes: @cashbox.notes, year: @cashbox.year } }
    assert_redirected_to cashbox_url(@cashbox)
  end

  test "should destroy cashbox" do
    assert_difference('Cashbox.count', -1) do
      delete cashbox_url(@cashbox)
    end

    assert_redirected_to cashboxes_url
  end
end
