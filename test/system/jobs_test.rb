require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
    save_and_open_screenshot
    assert_selector "h1", text: "Job"
  end
end
