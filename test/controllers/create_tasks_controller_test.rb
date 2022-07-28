require "test_helper"

class CreateTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_task = create_tasks(:one)
  end

  test "should get index" do
    get create_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_create_task_url
    assert_response :success
  end

  test "should create create_task" do
    assert_difference("CreateTask.count") do
      post create_tasks_url, params: { create_task: {  } }
    end

    assert_redirected_to create_task_url(CreateTask.last)
  end

  test "should show create_task" do
    get create_task_url(@create_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_task_url(@create_task)
    assert_response :success
  end

  test "should update create_task" do
    patch create_task_url(@create_task), params: { create_task: {  } }
    assert_redirected_to create_task_url(@create_task)
  end

  test "should destroy create_task" do
    assert_difference("CreateTask.count", -1) do
      delete create_task_url(@create_task)
    end

    assert_redirected_to create_tasks_url
  end
end
