require "test_helper"

class MangasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mangas_index_url
    assert_response :success
  end

  test "should get show" do
    get mangas_show_url
    assert_response :success
  end
end
