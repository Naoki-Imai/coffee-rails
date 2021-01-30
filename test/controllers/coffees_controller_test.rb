require 'test_helper'

class CoffeesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coffees_index_url
    assert_response :success
  end

  test "should get edit" do
    get coffees_edit_url
    assert_response :success
  end

  test "should get new" do
    get coffees_new_url
    assert_response :success
  end

  test "should get show" do
    get coffees_show_url
    assert_response :success
  end

end
