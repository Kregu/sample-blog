require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get message" do
    get contacts_message_url
    assert_response :success
  end

end
