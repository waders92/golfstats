require 'rails_helper'

RSpec.describe RoundsController, type: :controller do

  describe "rounds#new action" do
    it "should show the new form" do
      get :new
      expect(response).to have_http_status(:success)
      end
    end
  end
