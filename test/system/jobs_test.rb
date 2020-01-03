require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
    # save_and_open_screenshot
    assert_selector "h1", text: "Job"
    assert_selector ".header-text", count: 1
  end

  test "column count" do
    visit "/"
    # save_and_open_screenshot
    assert_selector "th", count: 4
  end

  test "row count" do
    visit "/"
    # save_and_open_screenshot
    assert_selector "tr", count: Vacancy.count + 1
  end
end
