require "test_helper"

class BirthdayscControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get birthdaysc_new_url
    assert_response :success
  end

  test "should get show" do
    get birthdaysc_show_url
    assert_response :success
  end

  test "should get edit" do
    get birthdaysc_edit_url
    assert_response :success
  end

  test "should get delete" do
    get birthdaysc_delete_url
    assert_response :success
  end
end
