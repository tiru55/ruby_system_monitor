require "application_system_test_case"

class SystemInfosControllersTest < ApplicationSystemTestCase
  setup do
    @system_infos_controller = system_infos_controllers(:one)
  end

  test "visiting the index" do
    visit system_infos_controllers_url
    assert_selector "h1", text: "System Infos Controllers"
  end

  test "creating a System infos controller" do
    visit system_infos_controllers_url
    click_on "New System Infos Controller"

    click_on "Create System infos controller"

    assert_text "System infos controller was successfully created"
    click_on "Back"
  end

  test "updating a System infos controller" do
    visit system_infos_controllers_url
    click_on "Edit", match: :first

    click_on "Update System infos controller"

    assert_text "System infos controller was successfully updated"
    click_on "Back"
  end

  test "destroying a System infos controller" do
    visit system_infos_controllers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "System infos controller was successfully destroyed"
  end
end
