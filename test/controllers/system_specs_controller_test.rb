require "test_helper"

class SystemSpecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @system_spec = system_specs(:one)
  end

  test "should get index" do
    get system_specs_url
    assert_response :success
  end

  test "should get new" do
    get new_system_spec_url
    assert_response :success
  end

  test "should create system_spec" do
    assert_difference('SystemSpec.count') do
      post system_specs_url, params: { system_spec: { architecture: @system_spec.architecture, bios_vendor: @system_spec.bios_vendor, bios_version: @system_spec.bios_version, cpu_architecture: @system_spec.cpu_architecture, distribution: @system_spec.distribution, distribution_codename: @system_spec.distribution_codename, free_space: @system_spec.free_space, hostname: @system_spec.hostname, ip_address: @system_spec.ip_address, kernel: @system_spec.kernel, kernel_version: @system_spec.kernel_version, macaddress: @system_spec.macaddress, manufacturer: @system_spec.manufacturer, operating_system: @system_spec.operating_system, os_family: @system_spec.os_family, processor_core_count: @system_spec.processor_core_count, processor_family: @system_spec.processor_family, processor_frequency: @system_spec.processor_frequency, processor_manufacturer: @system_spec.processor_manufacturer, processor_version: @system_spec.processor_version, product_name: @system_spec.product_name, serial_number: @system_spec.serial_number, system_uuid: @system_spec.system_uuid, total_memory: @system_spec.total_memory, total_storage: @system_spec.total_storage, total_swap: @system_spec.total_swap, username: @system_spec.username } }
    end

    assert_redirected_to system_spec_url(SystemSpec.last)
  end

  test "should show system_spec" do
    get system_spec_url(@system_spec)
    assert_response :success
  end

  test "should get edit" do
    get edit_system_spec_url(@system_spec)
    assert_response :success
  end

  test "should update system_spec" do
    patch system_spec_url(@system_spec), params: { system_spec: { architecture: @system_spec.architecture, bios_vendor: @system_spec.bios_vendor, bios_version: @system_spec.bios_version, cpu_architecture: @system_spec.cpu_architecture, distribution: @system_spec.distribution, distribution_codename: @system_spec.distribution_codename, free_space: @system_spec.free_space, hostname: @system_spec.hostname, ip_address: @system_spec.ip_address, kernel: @system_spec.kernel, kernel_version: @system_spec.kernel_version, macaddress: @system_spec.macaddress, manufacturer: @system_spec.manufacturer, operating_system: @system_spec.operating_system, os_family: @system_spec.os_family, processor_core_count: @system_spec.processor_core_count, processor_family: @system_spec.processor_family, processor_frequency: @system_spec.processor_frequency, processor_manufacturer: @system_spec.processor_manufacturer, processor_version: @system_spec.processor_version, product_name: @system_spec.product_name, serial_number: @system_spec.serial_number, system_uuid: @system_spec.system_uuid, total_memory: @system_spec.total_memory, total_storage: @system_spec.total_storage, total_swap: @system_spec.total_swap, username: @system_spec.username } }
    assert_redirected_to system_spec_url(@system_spec)
  end

  test "should destroy system_spec" do
    assert_difference('SystemSpec.count', -1) do
      delete system_spec_url(@system_spec)
    end

    assert_redirected_to system_specs_url
  end
end
