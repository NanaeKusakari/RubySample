class CreateTasksController < ApplicationController
  before_action :set_create_task, only: %i[ show edit update destroy ]

  # GET /create_tasks or /create_tasks.json
  def index
    @create_tasks = CreateTask.all
  end

  # GET /create_tasks/1 or /create_tasks/1.json
  def show
  end

  # GET /create_tasks/new
  def new
    @create_task = CreateTask.new
  end

  # GET /create_tasks/1/edit
  def edit
  end

  # POST /create_tasks or /create_tasks.json
  def create
    @create_task = CreateTask.new(create_task_params)

    respond_to do |format|
      if @create_task.save
        format.html { redirect_to create_task_url(@create_task), notice: "Create task was successfully created." }
        format.json { render :show, status: :created, location: @create_task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_tasks/1 or /create_tasks/1.json
  def update
    respond_to do |format|
      if @create_task.update(create_task_params)
        format.html { redirect_to create_task_url(@create_task), notice: "Create task was successfully updated." }
        format.json { render :show, status: :ok, location: @create_task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_tasks/1 or /create_tasks/1.json
  def destroy
    @create_task.destroy

    respond_to do |format|
      format.html { redirect_to create_tasks_url, notice: "Create task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_task
      @create_task = CreateTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_task_params
      params.fetch(:create_task, {})
    end

end
