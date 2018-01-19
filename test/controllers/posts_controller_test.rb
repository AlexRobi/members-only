require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  def setup 
    @base_title = "| Members-Only!"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home #{@base_title}"
  end

end
