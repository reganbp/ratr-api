require 'rails_helper'

RSpec.describe "Breweries", type: :request do
  describe "GET /breweries" do
    it "works! (now write some real specs)" do
      get breweries_path
      expect(response).to have_http_status(200)
    end
  end
end
