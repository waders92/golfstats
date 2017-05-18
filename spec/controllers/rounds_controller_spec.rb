require 'rails_helper'

RSpec.describe RoundsController, type: :controller do
  describe 'rounds#create action' do
    it 'should create a new round in the database' do
      user = FactoryGirl.create(:user)
      sign_in user
      round = FactoryGirl.create(:round)

      post :create, round: { course: 'Test course' }
      expect(response).to redirect_to dashboard_path
      round = Round.last
      expect(round.course).to eq 'Test course'
      expect(round.user).to eq(round.user)
    end

    it 'should deal with errors correctly' do
      post :create, params: { round: { course: '' } }
      expect(Round.count).to eq 0
    end
  end

  describe 'rounds#destroy action' do
    it 'allows the round owner to delete a round in the database' do
      user = FactoryGirl.create(:user)
      round = FactoryGirl.create(:round)
      sign_in user

      delete :destroy, id: round.id
      expect(response).to redirect_to dashboard_path
      round = Round.find_by(id: round.id)
      expect(round).to eq nil
    end
  end
end
