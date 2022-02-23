require "test_helper"

class CoreStrengthClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @core_strength_class = core_strength_classes(:one)
  end

  test "should get index" do
    get core_strength_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_core_strength_class_url
    assert_response :success
  end

  test "should create core_strength_class" do
    assert_difference("CoreStrengthClass.count") do
      post core_strength_classes_url, params: { core_strength_class: { description: @core_strength_class.description, end_date: @core_strength_class.end_date, facilitator_id: @core_strength_class.facilitator_id, name: @core_strength_class.name, start_date: @core_strength_class.start_date, timezone: @core_strength_class.timezone } }
    end

    assert_redirected_to core_strength_class_url(CoreStrengthClass.last)
  end

  test "should show core_strength_class" do
    get core_strength_class_url(@core_strength_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_core_strength_class_url(@core_strength_class)
    assert_response :success
  end

  test "should update core_strength_class" do
    patch core_strength_class_url(@core_strength_class), params: { core_strength_class: { description: @core_strength_class.description, end_date: @core_strength_class.end_date, facilitator_id: @core_strength_class.facilitator_id, name: @core_strength_class.name, start_date: @core_strength_class.start_date, timezone: @core_strength_class.timezone } }
    assert_redirected_to core_strength_class_url(@core_strength_class)
  end

  test "should destroy core_strength_class" do
    assert_difference("CoreStrengthClass.count", -1) do
      delete core_strength_class_url(@core_strength_class)
    end

    assert_redirected_to core_strength_classes_url
  end
end
