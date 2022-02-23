require "application_system_test_case"

class CoreStrengthClassesTest < ApplicationSystemTestCase
  setup do
    @core_strength_class = core_strength_classes(:one)
  end

  test "visiting the index" do
    visit core_strength_classes_url
    assert_selector "h1", text: "Core strength classes"
  end

  test "should create core strength class" do
    visit core_strength_classes_url
    click_on "New core strength class"

    fill_in "Description", with: @core_strength_class.description
    fill_in "End date", with: @core_strength_class.end_date
    fill_in "Facilitator", with: @core_strength_class.facilitator_id
    fill_in "Name", with: @core_strength_class.name
    fill_in "Start date", with: @core_strength_class.start_date
    fill_in "Timezone", with: @core_strength_class.timezone
    click_on "Create Core strength class"

    assert_text "Core strength class was successfully created"
    click_on "Back"
  end

  test "should update Core strength class" do
    visit core_strength_class_url(@core_strength_class)
    click_on "Edit this core strength class", match: :first

    fill_in "Description", with: @core_strength_class.description
    fill_in "End date", with: @core_strength_class.end_date
    fill_in "Facilitator", with: @core_strength_class.facilitator_id
    fill_in "Name", with: @core_strength_class.name
    fill_in "Start date", with: @core_strength_class.start_date
    fill_in "Timezone", with: @core_strength_class.timezone
    click_on "Update Core strength class"

    assert_text "Core strength class was successfully updated"
    click_on "Back"
  end

  test "should destroy Core strength class" do
    visit core_strength_class_url(@core_strength_class)
    click_on "Destroy this core strength class", match: :first

    assert_text "Core strength class was successfully destroyed"
  end
end
