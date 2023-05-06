class ParkingFeesController < ApplicationController
  before_action :set_parking_fee, only: %i[ show edit update destroy ]

  # GET /parking_fees or /parking_fees.json
  def index
    @parking_fees = ParkingFee.all
  end

  # GET /parking_fees/1 or /parking_fees/1.json
  def show
  end

  # GET /parking_fees/new
  def new
    @parking_fee = ParkingFee.new
  end

  # GET /parking_fees/1/edit
  def edit
  end

  # POST /parking_fees or /parking_fees.json
  def create
    @parking_fee = ParkingFee.new(parking_fee_params)

    respond_to do |format|
      if @parking_fee.save
        format.html { redirect_to parking_fee_url(@parking_fee), notice: "Parking fee was successfully created." }
        format.json { render :show, status: :created, location: @parking_fee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parking_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_fees/1 or /parking_fees/1.json
  def update
    respond_to do |format|
      if @parking_fee.update(parking_fee_params)
        format.html { redirect_to parking_fee_url(@parking_fee), notice: "Parking fee was successfully updated." }
        format.json { render :show, status: :ok, location: @parking_fee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parking_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_fees/1 or /parking_fees/1.json
  def destroy
    @parking_fee.destroy

    respond_to do |format|
      format.html { redirect_to parking_fees_url, notice: "Parking fee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_fee
      @parking_fee = ParkingFee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parking_fee_params
      params.require(:parking_fee).permit(:parking_fee_type, :parking_fee_description, :parking_fee_money)
    end
end
