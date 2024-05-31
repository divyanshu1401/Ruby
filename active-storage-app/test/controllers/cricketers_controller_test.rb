require "test_helper"

class CricketersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cricketer = cricketers(:one)
  end

  test "should get index" do
    get cricketers_url
    assert_response :success
  end

  test "should get new" do
    get new_cricketer_url
    assert_response :success
  end

  test "should create cricketer" do
    assert_difference("Cricketer.count") do
      post cricketers_url, params: { cricketer: { name: @cricketer.name } }
    end

    assert_redirected_to cricketer_url(Cricketer.last)
  end

  test "should show cricketer" do
    get cricketer_url(@cricketer)
    assert_response :success
  end

  test "should get edit" do
    get edit_cricketer_url(@cricketer)
    assert_response :success
  end

  test "should update cricketer" do
    patch cricketer_url(@cricketer), params: { cricketer: { name: @cricketer.name } }
    assert_redirected_to cricketer_url(@cricketer)
  end

  test "should destroy cricketer" do
    assert_difference("Cricketer.count", -1) do
      delete cricketer_url(@cricketer)
    end

    assert_redirected_to cricketers_url
  end
end
