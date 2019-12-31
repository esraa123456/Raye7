require 'rails_helper'

RSpec.describe "Pickups", type: :request do
  describe "GET /pickups" do
    it "works! (now write some real specs)" do
      get pickups_path
      expect(response).to have_http_status(200)
    end
  end
end
