class RoleOfSupervisorsController < ApplicationController
  before_action :set_role_of_supervisor, only: %i[ show edit update destroy ]

  # GET /role_of_supervisors or /role_of_supervisors.json
  def index
    @role_of_supervisors = RoleOfSupervisor.all
  end

  # GET /role_of_supervisors/1 or /role_of_supervisors/1.json
  def show
  end

  # GET /role_of_supervisors/new
  def new
    @role_of_supervisor = RoleOfSupervisor.new
  end

  # GET /role_of_supervisors/1/edit
  def edit
  end

  # POST /role_of_supervisors or /role_of_supervisors.json
  def create
    @role_of_supervisor = RoleOfSupervisor.new(role_of_supervisor_params)

    respond_to do |format|
      if @role_of_supervisor.save
        format.html { redirect_to role_of_supervisor_url(@role_of_supervisor), notice: "Role of supervisor was successfully created." }
        format.json { render :show, status: :created, location: @role_of_supervisor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @role_of_supervisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /role_of_supervisors/1 or /role_of_supervisors/1.json
  def update
    respond_to do |format|
      if @role_of_supervisor.update(role_of_supervisor_params)
        format.html { redirect_to role_of_supervisor_url(@role_of_supervisor), notice: "Role of supervisor was successfully updated." }
        format.json { render :show, status: :ok, location: @role_of_supervisor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @role_of_supervisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /role_of_supervisors/1 or /role_of_supervisors/1.json
  def destroy
    @role_of_supervisor.destroy

    respond_to do |format|
      format.html { redirect_to role_of_supervisors_url, notice: "Role of supervisor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_of_supervisor
      @role_of_supervisor = RoleOfSupervisor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def role_of_supervisor_params
      params.require(:role_of_supervisor).permit(:role_of_supervisor_category)
    end
end
