require 'test_helper'

class ThreadtitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @threadtitle = threadtitles(:one)
  end

  test "should get index" do
    get threadtitles_url
    assert_response :success
  end

  test "should get new" do
    get new_threadtitle_url
    assert_response :success
  end

  test "should create threadtitle" do
    assert_difference('Threadtitle.count') do
      post threadtitles_url, params: { threadtitle: { name: @threadtitle.name } }
    end

    assert_redirected_to threadtitle_url(Threadtitle.last)
  end

  test "should show threadtitle" do
    get threadtitle_url(@threadtitle)
    assert_response :success
  end

  test "should get edit" do
    get edit_threadtitle_url(@threadtitle)
    assert_response :success
  end

  test "should update threadtitle" do
    patch threadtitle_url(@threadtitle), params: { threadtitle: { name: @threadtitle.name } }
    assert_redirected_to threadtitle_url(@threadtitle)
  end

  test "should destroy threadtitle" do
    assert_difference('Threadtitle.count', -1) do
      delete threadtitle_url(@threadtitle)
    end

    assert_redirected_to threadtitles_url
  end
end
