# Model Tests

require 'test_helper'

class VacancyTest < ActiveSupport::TestCase
  test "salary returns a number" do
    vacancy = Vacancy.new(salary: 500)
    assert_equal 500, vacancy.salary
  end
  test "Title returns a string" do
    vacancy = Vacancy.new(title: "Biology Teacher")
    assert_equal "Biology Teacher", vacancy.title
  end
  test "School returns a string" do
    vacancy = Vacancy.new(school: "Latymer")
    assert_equal "Latymer", vacancy.school
  end
  test "Description returns a string" do
    vacancy = Vacancy.new(description: "Looking for a Biology Teacher based in London")
    assert_equal "Looking for a Biology Teacher based in London", vacancy.description
  end
end
