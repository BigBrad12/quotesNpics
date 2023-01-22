require "test_helper"

class UppiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uppy = uppies(:one)
  end

  test "should get index" do
    get uppies_url
    assert_response :success
  end

  test "should get new" do
    get new_uppy_url
    assert_response :success
  end

  test "should create uppy" do
    assert_difference("Uppy.count") do
      post uppies_url, params: { uppy: { body: @uppy.body, wallpaper: @uppy.wallpaper } }
    end

    assert_redirected_to uppy_url(Uppy.last)
  end

  test "should show uppy" do
    get uppy_url(@uppy)
    assert_response :success
  end

  test "should get edit" do
    get edit_uppy_url(@uppy)
    assert_response :success
  end

  test "should update uppy" do
    patch uppy_url(@uppy), params: { uppy: { body: @uppy.body, wallpaper: @uppy.wallpaper } }
    assert_redirected_to uppy_url(@uppy)
  end

  test "should destroy uppy" do
    assert_difference("Uppy.count", -1) do
      delete uppy_url(@uppy)
    end

    assert_redirected_to uppies_url
  end
end
