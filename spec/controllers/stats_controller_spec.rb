require 'rails_helper'

RSpec.describe StatsController, type: :controller do
  describe "stats#index action" do
    it "responds with success to show the root page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
