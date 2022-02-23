require "test_helper"

class CoreStrengthClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = users(:three)
    @core_strength_class = core_strength_classes(:one)
  end

  test "should get index" do
    get core_strength_classes_url
    assert_response :success
  end

  test "should add users to core_strength_class" do
    patch core_strength_class_url(@core_strength_class), params: {
            core_strength_class: { student_ids: [@student.id] } }
    assert_includes @core_strength_class.students, @student
  end


  test "should destroy core_strength_class" do
    assert_difference("CoreStrengthClass.count", -1) do
      delete core_strength_class_url(@core_strength_class)
    end

    assert_redirected_to core_strength_classes_url
  end
end
