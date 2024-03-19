require "test_helper"

class ExecutionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get execution_index_url
    assert_response :success
  end
end
