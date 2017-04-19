require 'rails_helper'

RSpec.describe SecretsController, type: :controller do
  before do
    @user = create(:user)
    @secret = create(:secret, user: @user)
  end
  context "when not logged in" do
    # before do
    #   session[:user_id] = nil
    #   session[:user_name] = nil
    # end
    it "cannot access index" do
      get :index
      expect(response).to redirect_to("/sessions/new")
    end
    it "cannot access create" do
      post :create, secret: build(:secret)
      expect(response).to redirect_to("/sessions/new")
    end
    it "cannot access destroy" do
      delete :destroy, params: { id: @secret.id }
      expect(response).to redirect_to("/sessions/new")
    end
  end
  context "when signed in as the wrong user" do
    it "cannot destroy another user's secret" do
      @user2 = create(:user, email: "user@user.com")
      session[:user_id] = @user2.id
      delete :destroy, params: { id: @secret.id }
      expect(response).to redirect_to("/users/#{session[:user_id]}")
    end
  end
end
