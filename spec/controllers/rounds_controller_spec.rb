require 'rails_helper'

RSpec.describe RoundsController, type: :controller do

  describe "rounds#new action" do
    it "should show the new form" do
      get :new
      expect(response).to have_http_status(:success)
      end
    end

    describe "grams#create action" do
      it "should create a new round in the database" do
        post :create, round: { course: 'Hello' }
        expect(response).to redirect_to root_path

        round = Round.last
        expect(round.course).to eq ("Hello")
      end

      it "should deal with errors correctly" do
        post :create, round: {course: '' }
        expect(Round.count).to eq 0
      end
    end
  end
