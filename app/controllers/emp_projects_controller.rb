class EmpProjectsController < ApplicationController
  before_action :set_emp_project, only: [:show, :edit, :update, :destroy]

  # GET /emp_projects
  # GET /emp_projects.json
  def index
    @emp_projects = EmpProject.all
  end

  # GET /emp_projects/1
  # GET /emp_projects/1.json
  def show
  end

  # GET /emp_projects/new
  def new
    @emp_project = EmpProject.new
  end

  # GET /emp_projects/1/edit
  def edit
  end

  # POST /emp_projects
  # POST /emp_projects.json
  def create
    @emp_project = EmpProject.new(emp_project_params)

    respond_to do |format|
      if @emp_project.save
        format.html { redirect_to @emp_project, notice: 'Emp project was successfully created.' }
        format.json { render :show, status: :created, location: @emp_project }
      else
        format.html { render :new }
        format.json { render json: @emp_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emp_projects/1
  # PATCH/PUT /emp_projects/1.json
  def update
    respond_to do |format|
      if @emp_project.update(emp_project_params)
        format.html { redirect_to @emp_project, notice: 'Emp project was successfully updated.' }
        format.json { render :show, status: :ok, location: @emp_project }
      else
        format.html { render :edit }
        format.json { render json: @emp_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emp_projects/1
  # DELETE /emp_projects/1.json
  def destroy
    @emp_project.destroy
    respond_to do |format|
      format.html { redirect_to emp_projects_url, notice: 'Emp project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emp_project
      @emp_project = EmpProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emp_project_params
      params.require(:emp_project).permit(:employee_id, :project_id)
    end
end
