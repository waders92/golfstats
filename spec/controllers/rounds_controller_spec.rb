require 'rails_helper'

RSpec.describe RoundsController, type: :controller do

    describe "rounds#create action" do
      it "should create a new round in the database" do
        user = FactoryGirl.create(:user)
        round = FactoryGirl.create(:round)
        sign_in user

        post :create, round: { course: 'Test course' }
        expect(response).to redirect_to dashboard_path

        round = Round.last
        expect(round.course).to eq ("Test course")
        expect(round.user).to eq(round.user)
      end

      it "should deal with errors correctly" do
        post :create, round: {course: '' }
        expect(Round.count).to eq 0
      end
    end
  end
