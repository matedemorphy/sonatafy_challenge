class DealershipsController < ApplicationController
  before_action :declare_dealership, only: :index
  before_action :set_dealership, only: :destroy

  def index
    @dealerships = Dealership.all
  end

  def create
    @dealership = Dealership.new(dealership_params)

    respond_to do |format|
      if @dealership.save
        format.html { redirect_to dealership_url(@dealership), notice: "Dealership was successfully created." }
      else
        format.html { redirect_to dealerships_url }
      end
    end
  end

  def destroy
    @dealership_to_destroy.destroy

    respond_to do |format|
      format.html { redirect_to dealerships_url, notice: "Dealership was successfully destroyed." }
    end
  end

  private

  def set_dealership
    @dealership_to_destroy = Dealership.find(params[:id])
  end

  def dealership_params
    params.require(:dealership).permit(:location, :address, :phone_number, :cell_phone_number, :email)
  end

  def declare_dealership
    @dealership = Dealership.new
  end
end
