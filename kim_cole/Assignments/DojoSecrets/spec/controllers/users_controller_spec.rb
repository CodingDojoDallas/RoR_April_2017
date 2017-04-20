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
      get :show, id: @user.id
      expect(response).to redirect_to("/sessions/new")
    end
    it "cannot access edit" do 
      get :edit,  id: @user.id
      expect(response).to redirect_to("/sessions/new")      
    end
    it "cannot access update" do 
      patch :update, id: @user
      expect(response).to redirect_to("/sessions/new")      
    end
    it "cannot access destroy" do 
      delete :destroy, id: @user
      expect(response).to redirect_to("/sessions/new")      
    end
  end
  context "when signed in as the wrong user" do
    before do
      @wrong_user = create(:user, name: 'someone else', email: 'some@else.com')
      session[:user_id] = @wrong_user.id
    end
    it "cannot access profile page another user" do
      get :show, id: @user
      expect(response).to redirect_to("/users/#{@wrong_user.id}")
    end
    it "cannot access the edit page of another user" do
      get :edit, id: @user
      expect(response).to redirect_to("/users/#{@wrong_user.id}")
    end    
    it "cannot update another user" do
      patch :update, id: @user
      expect(response).to redirect_to("/users/#{@wrong_user.id}")
    end
    it "cannot destroy another user" do
      delete :destroy, id: @user
      expect(response).to redirect_to("/users/#{@wrong_user.id}")
    end
  end  
end