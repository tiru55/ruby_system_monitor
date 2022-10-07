require "test_helper"

class SystemInfosControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @system_infos_controller = system_infos_controllers(:one)
  end

  test "should get index" do
    get system_infos_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_system_infos_controller_url
    assert_response :success
  end

  test "should create system_infos_controller" do
    assert_difference('SystemInfosController.count') do
      post system_infos_controllers_url, params: { system_infos_controller: {  } }
    end

    assert_redirected_to system_infos_controller_url(SystemInfosController.last)
  end

  test "should show system_infos_controller" do
    get system_infos_controller_url(@system_infos_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_system_infos_controller_url(@system_infos_controller)
    assert_response :success
  end

  test "should update system_infos_controller" do
    patch system_infos_controller_url(@system_infos_controller), params: { system_infos_controller: {  } }
    assert_redirected_to system_infos_controller_url(@system_infos_controller)
  end

  test "should destroy system_infos_controller" do
    assert_difference('SystemInfosController.count', -1) do
      delete system_infos_controller_url(@system_infos_controller)
    end

    assert_redirected_to system_infos_controllers_url
  end
end
