require 'rails_helper'

RSpec.describe NotesController, type: :controller do
  describe "notes#create action" do
    it "allows users to create notes on rounds" do
      round = FactoryGirl.create(:round)
      user = FactoryGirl.create(:user)
      sign_in user

      post :create, round_id: round.id, note: { message: 'my notes'}
      expect(response).to redirect_to round_path(round)
      expect(round.notes.first.message).to eq "my notes"

    end
  end

    it "requires users to be logged in to leave a note" do
      round = FactoryGirl.create(:round)
      post :create, round_id: round.id, note: {message: 'new note' }

      expect(response).to redirect_to new_user_session_path
    end

    describe "notes#edit action" do
      it "shows the edit form" do
        round = FactoryGirl.create(:round)
        user = FactoryGirl.create(:user)
        sign_in user

        get :edit
        expect(response).to have_http_status(:success)
      end
      
      it "allows the user to edit their notes on the round" do
        round = FactoryGirl.create(:round)
        user = FactoryGirl.create(:user)
        sign_in user

        patch :update, round_id: round.id, note: {message: 'changed notes' }
        expect(response).to redirect_to round_path(round)
        expect(round.notes.message).to eq "changed notes"
      end
    end
end
