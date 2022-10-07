require "application_system_test_case"

class SystemSpecsTest < ApplicationSystemTestCase
  setup do
    @system_spec = system_specs(:one)
  end

  test "visiting the index" do
    visit system_specs_url
    assert_selector "h1", text: "System Specs"
  end

  test "creating a System spec" do
    visit system_specs_url
    click_on "New System Spec"

    fill_in "Architecture", with: @system_spec.architecture
    fill_in "Bios vendor", with: @system_spec.bios_vendor
    fill_in "Bios version", with: @system_spec.bios_version
    fill_in "Cpu architecture", with: @system_spec.cpu_architecture
    fill_in "Distribution", with: @system_spec.distribution
    fill_in "Distribution codename", with: @system_spec.distribution_codename
    fill_in "Free space", with: @system_spec.free_space
    fill_in "Hostname", with: @system_spec.hostname
    fill_in "Ip address", with: @system_spec.ip_address
    fill_in "Kernel", with: @system_spec.kernel
    fill_in "Kernel version", with: @system_spec.kernel_version
    fill_in "Macaddress", with: @system_spec.macaddress
    fill_in "Manufacturer", with: @system_spec.manufacturer
    fill_in "Operating system", with: @system_spec.operating_system
    fill_in "Os family", with: @system_spec.os_family
    fill_in "Processor core count", with: @system_spec.processor_core_count
    fill_in "Processor family", with: @system_spec.processor_family
    fill_in "Processor frequency", with: @system_spec.processor_frequency
    fill_in "Processor manufacturer", with: @system_spec.processor_manufacturer
    fill_in "Processor version", with: @system_spec.processor_version
    fill_in "Product name", with: @system_spec.product_name
    fill_in "Serial number", with: @system_spec.serial_number
    fill_in "System uuid", with: @system_spec.system_uuid
    fill_in "Total memory", with: @system_spec.total_memory
    fill_in "Total storage", with: @system_spec.total_storage
    fill_in "Total swap", with: @system_spec.total_swap
    fill_in "Username", with: @system_spec.username
    click_on "Create System spec"

    assert_text "System spec was successfully created"
    click_on "Back"
  end

  test "updating a System spec" do
    visit system_specs_url
    click_on "Edit", match: :first

    fill_in "Architecture", with: @system_spec.architecture
    fill_in "Bios vendor", with: @system_spec.bios_vendor
    fill_in "Bios version", with: @system_spec.bios_version
    fill_in "Cpu architecture", with: @system_spec.cpu_architecture
    fill_in "Distribution", with: @system_spec.distribution
    fill_in "Distribution codename", with: @system_spec.distribution_codename
    fill_in "Free space", with: @system_spec.free_space
    fill_in "Hostname", with: @system_spec.hostname
    fill_in "Ip address", with: @system_spec.ip_address
    fill_in "Kernel", with: @system_spec.kernel
    fill_in "Kernel version", with: @system_spec.kernel_version
    fill_in "Macaddress", with: @system_spec.macaddress
    fill_in "Manufacturer", with: @system_spec.manufacturer
    fill_in "Operating system", with: @system_spec.operating_system
    fill_in "Os family", with: @system_spec.os_family
    fill_in "Processor core count", with: @system_spec.processor_core_count
    fill_in "Processor family", with: @system_spec.processor_family
    fill_in "Processor frequency", with: @system_spec.processor_frequency
    fill_in "Processor manufacturer", with: @system_spec.processor_manufacturer
    fill_in "Processor version", with: @system_spec.processor_version
    fill_in "Product name", with: @system_spec.product_name
    fill_in "Serial number", with: @system_spec.serial_number
    fill_in "System uuid", with: @system_spec.system_uuid
    fill_in "Total memory", with: @system_spec.total_memory
    fill_in "Total storage", with: @system_spec.total_storage
    fill_in "Total swap", with: @system_spec.total_swap
    fill_in "Username", with: @system_spec.username
    click_on "Update System spec"

    assert_text "System spec was successfully updated"
    click_on "Back"
  end

  test "destroying a System spec" do
    visit system_specs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "System spec was successfully destroyed"
  end
end
