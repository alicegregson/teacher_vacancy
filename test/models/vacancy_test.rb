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
end
