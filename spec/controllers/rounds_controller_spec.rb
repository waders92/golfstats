require 'rails_helper'

RSpec.describe RoundsController, type: :controller do

  describe "rounds#new action" do
    it "should show the new form" do

      get :new
      expect(response).to redirect_to new_user_session_path
      end
    end

    describe "rounds#create action" do
      it "should create a new round in the database" do
        user = FactoryGirl.create(:user)
        sign_in user

        post :create, round: { course: 'Test course' }
        expect(response).to redirect_to root_path

        round = Round.last
        expect(round.course).to eq ("Test course")
      end

      it "should deal with errors correctly" do
        post :create, round: {course: '' }
        expect(Round.count).to eq 0
      end
    end
  end
