require "test_helper"

class CoreStrengthClassTest < ActiveSupport::TestCase

  setup do
    @csc_one = core_strength_classes(:csc_100)
  end

  test 'fixtures_must_have_correct_count' do
    assert_equal 4, CoreStrengthClass.count
  end

  test 'fixture_must_have_name' do
    assert_equal @csc_one.name, 'Core Strength Class 100'
  end

  test 'fixture_must_respond_to_students' do
    assert @csc_one.students
  end

  test 'csc_students_must_return_collection' do
    # assert_equal @csc_one.students, []
  end


end
