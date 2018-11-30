require 'test_helper'

class Lab1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lab1_index_url
    assert_response :success
  end

  test "should get login" do
    get lab1_login_url
    assert_response :success
  end

  test "should get invoice" do
    get lab1_invoice_url
    assert_response :success
  end

  test "should get maint" do
    get lab1_maint_url
    assert_response :success
  end

  test "should get setting" do
    get lab1_setting_url
    assert_response :success
  end

  test "should get tax" do
    get lab1_tax_url
    assert_response :success
  end

end
