require 'test_helper'

class BankcardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bankcard = bankcards(:one)
  end

  test "should get index" do
    get bankcards_url
    assert_response :success
  end

  test "should get new" do
    get new_bankcard_url
    assert_response :success
  end

  test "should create bankcard" do
    assert_difference('Bankcard.count') do
      post bankcards_url, params: { bankcard: { active: @bankcard.active, bankaccount_id: @bankcard.bankaccount_id, card_number: @bankcard.card_number, expiry_date: @bankcard.expiry_date, note: @bankcard.note, person_id: @bankcard.person_id, security_code: @bankcard.security_code } }
    end

    assert_redirected_to bankcard_url(Bankcard.last)
  end

  test "should show bankcard" do
    get bankcard_url(@bankcard)
    assert_response :success
  end

  test "should get edit" do
    get edit_bankcard_url(@bankcard)
    assert_response :success
  end

  test "should update bankcard" do
    patch bankcard_url(@bankcard), params: { bankcard: { active: @bankcard.active, bankaccount_id: @bankcard.bankaccount_id, card_number: @bankcard.card_number, expiry_date: @bankcard.expiry_date, note: @bankcard.note, person_id: @bankcard.person_id, security_code: @bankcard.security_code } }
    assert_redirected_to bankcard_url(@bankcard)
  end

  test "should destroy bankcard" do
    assert_difference('Bankcard.count', -1) do
      delete bankcard_url(@bankcard)
    end

    assert_redirected_to bankcards_url
  end
end
