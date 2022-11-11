require 'rails_helper'

RSpec.describe "Dealerships", type: :request do
  subject { create(:user) }
  let!(:dealerships) { create_list(:dealership, 5) }
  
  describe "GET /index" do
    context "html response" do
      it "returns all dealerships" do
        sign_in subject
        get "/dealerships"
        expect(assigns(:dealerships)).to eq(dealerships)
        expect(assigns(:dealership)).to be_an_instance_of(Dealership)
      end

      it "creates a new dealership" do
        sign_in subject
        params = {
          location: "Miami, FL",
          address: "address 001",
          phone_number: '000-000',
          cell_phone_number: '12345',
          email: "contact@dealership.com"
        }
        post "/dealerships", params: {dealership: params}
        expect(Dealership.count).to eq(6)
        expect(flash[:notice]).to eq('Dealership was successfully created.')
      end

      it "destroy a dealership" do
        sign_in subject
        delete "/dealerships/#{dealerships.first.id}"
        expect(Dealership.count).to eq(4)
        expect(assigns(:dealership_to_destroy).id).to eq(dealerships.first.id)
        expect(flash[:notice]).to eq('Dealership was successfully destroyed.')
      end
    end
  end

end