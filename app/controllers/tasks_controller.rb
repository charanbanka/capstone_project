class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks or /tasks.json
  def index
    @tasks = Task.all
    #@project = context[:project].params[:@project]
    
  end

  # GET /tasks/1 or /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    
    @task = Task.new
    @p_id = params["id"]

    @phases = []
    Phase.all.each do |phase|
      if phase.title != "OnHold"
        @phases << phase
      end
    end
    
    puts @phases
    url = request.original_url

    @new = url.include? "new"
      
  end

  # GET /tasks/1/edit
  def edit
    @phases = []
    Phase.all.each do |phase|
      if phase.title != "OnHold"
        @phases << phase
      end
    end


    url = request.original_url
    myArray = url.split('/')
    @edit = myArray.last == 'edit'


  end

  # POST /tasks or /tasks.json
  def create
    
    @task = Task.new(task_params)
    @task.user = current_user
    @phase 
    Phase.all.each do |phase|
      if phase.title == @task.status
        @phase = phase
      end
    end
    @task.phase = @phase
    

    respond_to do |format|
      if @task.save
        format.html { redirect_to project_url(:id => @task.project_id), notice: "Task was successfully created." }
      
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to project_url(:id => @task.project_id), notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url, notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :description, :start_date, :end_date, :story_point, :priority, :due_date, :status, :task_type, :select_member, :task_dependency, :project_id,)
    end
end
