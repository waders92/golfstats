require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe "messages#create action" do
    it "should allow the user to create messages" do
      user = FactoryGirl.create(:user)
      sign_in user

      post :create, message: { message: 'test message'}
      expect(response).to redirect_to root_path
    end
  end

end
