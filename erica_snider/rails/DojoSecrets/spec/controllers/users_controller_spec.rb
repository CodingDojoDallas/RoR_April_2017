require 'rails_helper'
RSpec.describe UsersController, type: :controller do
  before do
      @user = create(:user)
    end
    context "when not logged in" do
      before do
        session[:user_id] = nil
      end
      it "cannot access show" do
        get :show, id: @user
        expect(response).to redirect_to("/sessions/new")
      end
      it "cannot access edit"
      it "cannot access update"
      it "cannot access destroy"
    end
end
