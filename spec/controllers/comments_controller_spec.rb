require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  describe "comments#create action" do
    it "should allow users to create comments on rounds" do
      round = FactoryGirl.create(:round)
      user = FactoryGirl.create(:user)
      sign_in user

      post :create, round_id: round.id, comment: { message: 'nice round'}
      expect(response).to redirect_to round_path(round)
      expect(round.comments.length).to eq 1
      expect(round.comments.first.message).to eq "nice round"

    end

    it "should require the user to be logged in to make a comment" do
      round = FactoryGirl.create(:round)
      post :create, round_id: round.id, comment: { message: 'nice round'}
      expect(response).to redirect_to new_user_session_path
    end
  end
end
