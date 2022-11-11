class CarsController < ApplicationController
	before_action :declare_car, only: :index
	before_action :set_car, only: :destroy

	def index
		@cars = Car.all
	end

	def create
		@car = Car.new(car_params)

		respond_to do |format|
			if @car.save
				format.html { redirect_to car_url(@car), notice: "Car was successfully created." }
			else
				format.html { redirect_to cars_url }
			end
		end
	end

	def destroy
		@car_to_destroy.destroy

		respond_to do |format|
			format.html { redirect_to cars_url, notice: "Car was successfully destroyed." }
		end
	end

	private

	def set_car
		@car_to_destroy = Car.find(params[:id])
	end

	def car_params
		params.require(:car).permit(:make, :model, :condition, :price, :dealership_id)
	end

	def declare_car
		@car = Car.new
	end
end
