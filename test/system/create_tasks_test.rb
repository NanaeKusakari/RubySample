require "application_system_test_case"

class CreateTasksTest < ApplicationSystemTestCase
  setup do
    @create_task = create_tasks(:one)
  end

  test "visiting the index" do
    visit create_tasks_url
    assert_selector "h1", text: "Create tasks"
  end

  test "should create create task" do
    visit create_tasks_url
    click_on "New create task"

    click_on "Create Create task"

    assert_text "Create task was successfully created"
    click_on "Back"
  end

  test "should update Create task" do
    visit create_task_url(@create_task)
    click_on "Edit this create task", match: :first

    click_on "Update Create task"

    assert_text "Create task was successfully updated"
    click_on "Back"
  end

  test "should destroy Create task" do
    visit create_task_url(@create_task)
    click_on "Destroy this create task", match: :first

    assert_text "Create task was successfully destroyed"
  end
end
