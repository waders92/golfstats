require 'rails_helper'

RSpec.describe NineholeroundsController, type: :controller do
  describe 'nineholeround#create action' do
    it 'creates a new 9 hole round in the database' do
      user = FactoryGirl.create(:user)
      sign_in user
      nineholeround = FactoryGirl.create(:nineholeround)

      post :create, nineholeround: { course: 'Test course' }
      expect(response).to redirect_to nine_holes_path
      nineholeround = Nineholeround.last
      expect(nineholeround.course).to eq 'Test course'
      expect(nineholeround.user).to eq(nineholeround.user)

    end
  end

  describe 'nineholeround#destroy action' do
    it 'allows the round owner to delete a nineholeround in the database' do
      user = FactoryGirl.create(:user)
      nineholeround = FactoryGirl.create(:nineholeround)
      sign_in user

      delete :destroy, id: nineholeround.id
      expect(response).to redirect_to nine_holes_path
      nineholeround = Nineholeround.find_by(id: nineholeround.id)
      expect(nineholeround).to eq nil
    end
  end
end
