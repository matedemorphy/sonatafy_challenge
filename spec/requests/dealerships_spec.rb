require 'rails_helper'

RSpec.describe "Dealerships", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/dealerships/index"
      expect(response).to have_http_status(:success)
    end
  end

end
