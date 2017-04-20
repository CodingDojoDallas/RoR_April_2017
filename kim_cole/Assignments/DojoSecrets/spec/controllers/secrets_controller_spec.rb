require 'rails_helper'
RSpec.describe SecretsController, type: :controller do
  before do
    @user = create(:user)
    @secret = create(:secret, user: @user)
  end
  context "when not logged in" do
    before do
      session[:user_id] = nil
    end
    it "cannot access index" do 
      get :index
      expect(response).to redirect_to("/sessions/new")
    end
    it "cannot access create" do 
      post :create
      expect(response).to redirect_to("/sessions/new")
    end
    it "cannot access destroy" do 
      delete :destroy, id: @user
      expect(response).to redirect_to("/sessions/new")
    end
  end
  context "when signed in as the wrong user" do
    before do
      @wrong_user = create(:user, email: 'wrong@user.com')
      session[:user_id] = @wrong_user.id
    end
    it "cannot destroy another user's secret" do
      delete :destroy, id: @secret.id
      expect(Secret.last).to eq(@secret)
    end
  end  
end