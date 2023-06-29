require "test_helper"

class MainfarmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mainfarm = mainfarms(:one)
  end

  test "should get index" do
    get mainfarms_url
    assert_response :success
  end

  test "should get new" do
    get new_mainfarm_url
    assert_response :success
  end

  test "should create mainfarm" do
    assert_difference("Mainfarm.count") do
      post mainfarms_url, params: { mainfarm: { name: @mainfarm.name } }
    end

    assert_redirected_to mainfarm_url(Mainfarm.last)
  end

  test "should show mainfarm" do
    get mainfarm_url(@mainfarm)
    assert_response :success
  end

  test "should get edit" do
    get edit_mainfarm_url(@mainfarm)
    assert_response :success
  end

  test "should update mainfarm" do
    patch mainfarm_url(@mainfarm), params: { mainfarm: { name: @mainfarm.name } }
    assert_redirected_to mainfarm_url(@mainfarm)
  end

  test "should destroy mainfarm" do
    assert_difference("Mainfarm.count", -1) do
      delete mainfarm_url(@mainfarm)
    end

    assert_redirected_to mainfarms_url
  end
end
