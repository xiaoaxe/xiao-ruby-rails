require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get abount" do
    get pages_abount_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get resources" do
    get pages_resources_url
    assert_response :success
  end

end
