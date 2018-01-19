require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup 
    @base_title = "| Members-Only!"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About #{@base_title}"
  end
end
