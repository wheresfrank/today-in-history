require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get articles_welcome_url
    assert_response :success
  end
end
