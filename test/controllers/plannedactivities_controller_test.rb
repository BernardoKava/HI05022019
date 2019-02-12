require 'test_helper'

class PlannedactivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plannedactivity = plannedactivities(:one)
  end

  test "should get index" do
    get plannedactivities_url
    assert_response :success
  end

  test "should get new" do
    get new_plannedactivity_url
    assert_response :success
  end

  test "should create plannedactivity" do
    assert_difference('Plannedactivity.count') do
      post plannedactivities_url, params: { plannedactivity: { activity_date: @plannedactivity.activity_date, description: @plannedactivity.description, name: @plannedactivity.name, person_id: @plannedactivity.person_id, target_amount: @plannedactivity.target_amount, user_id: @plannedactivity.user_id } }
    end

    assert_redirected_to plannedactivity_url(Plannedactivity.last)
  end

  test "should show plannedactivity" do
    get plannedactivity_url(@plannedactivity)
    assert_response :success
  end

  test "should get edit" do
    get edit_plannedactivity_url(@plannedactivity)
    assert_response :success
  end

  test "should update plannedactivity" do
    patch plannedactivity_url(@plannedactivity), params: { plannedactivity: { activity_date: @plannedactivity.activity_date, description: @plannedactivity.description, name: @plannedactivity.name, person_id: @plannedactivity.person_id, target_amount: @plannedactivity.target_amount, user_id: @plannedactivity.user_id } }
    assert_redirected_to plannedactivity_url(@plannedactivity)
  end

  test "should destroy plannedactivity" do
    assert_difference('Plannedactivity.count', -1) do
      delete plannedactivity_url(@plannedactivity)
    end

    assert_redirected_to plannedactivities_url
  end
end
