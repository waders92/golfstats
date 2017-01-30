require 'rails_helper'

RSpec.describe DashboardsController, type: :controller do

  describe "dashboard#show action" do
    it "should show the dashboard page for the user" do
      user = FactoryGirl.create(:user)
      sign_in user
      
      get :show
      expect(response).to render_template("show")
    end
  end



end
