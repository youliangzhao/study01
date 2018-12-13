require 'test_helper'

class UserTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_tasks_index_url
    assert_response :success
  end

end
