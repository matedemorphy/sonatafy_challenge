require 'rails_helper'

RSpec.describe "Cars", type: :request do
  subject { create(:user) }
  let!(:cars) { create_list(:car, 5) }
  let!(:dealership) { create(:dealership) }

  describe "GET /index" do
    context "html response" do
      it "returns all cars" do
        sign_in subject
        get "/cars"
        expect(assigns(:cars)).to eq(cars)
        expect(assigns(:car)).to be_an_instance_of(Car)
      end

      it "creates a new car" do
        sign_in subject
        params = {
          make: "Mazda 3",
          model: "3 Grand Touring",
          condition: "new",
          price: 100000000,
          dealership_id: dealership.id
        }
        post "/cars", params: {car: params}
        expect(Car.count).to eq(6)
        expect(flash[:notice]).to eq('Car was successfully created.')
      end

      it "destroy a car" do
        sign_in subject
        delete "/cars/#{cars.first.id}"
        expect(Car.count).to eq(4)
        expect(assigns(:car_to_destroy).id).to eq(cars.first.id)
        expect(flash[:notice]).to eq('Car was successfully destroyed.')
      end
    end
  end
end
