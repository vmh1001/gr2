class ParkingStatusesController < ApplicationController
  before_action :set_parking_status, only: %i[ show edit update destroy ]

  # GET /parking_statuses or /parking_statuses.json
  def index
    @parking_statuses = ParkingStatus.all
  end

  # GET /parking_statuses/1 or /parking_statuses/1.json
  def show
  end

  # GET /parking_statuses/new
  def new
    @parking_status = ParkingStatus.new
  end

  # GET /parking_statuses/1/edit
  def edit
  end

  # POST /parking_statuses or /parking_statuses.json
  def create
    @parking_status = ParkingStatus.new(parking_status_params)

    respond_to do |format|
      if @parking_status.save
        format.html { redirect_to parking_status_url(@parking_status), notice: "Parking status was successfully created." }
        format.json { render :show, status: :created, location: @parking_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parking_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_statuses/1 or /parking_statuses/1.json
  def update
    respond_to do |format|
      if @parking_status.update(parking_status_params)
        format.html { redirect_to parking_status_url(@parking_status), notice: "Parking status was successfully updated." }
        format.json { render :show, status: :ok, location: @parking_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parking_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_statuses/1 or /parking_statuses/1.json
  def destroy
    @parking_status.destroy

    respond_to do |format|
      format.html { redirect_to parking_statuses_url, notice: "Parking status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_status
      @parking_status = ParkingStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parking_status_params
      params.require(:parking_status).permit(:parking_fee_id, :parking_slot_id, :car_id, :customer_id, :permission_id)
    end
end
