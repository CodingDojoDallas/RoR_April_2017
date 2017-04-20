require "rails_helper"
RSpec.describe LikesController, type: :controller do 
  before do 
    @user = create(:user)
    @secret = create(:secret, user: @user)
    @like = create(:like, secret: @secret, user: @user)
  end
  context "when not logged in " do 
    before do 
      session[:user_id] = nil
    end
    it "cannot create a like" do 
      post :create
      expect(response).to redirect_to("/sessions/new")      
    end
    it "cannot destroy a like" do 
      delete :destroy, id: @like.id
      expect(response).to redirect_to("/sessions/new")      
    end
  end
  context "when signed in as the wrong user" do 
    before do 
      @wrong_user = create(:user, email: "wrong@user.com")
      session[:user_id] = @wrong_user.id
    end
    it "shouldn't be able to destroy a like" do 
      delete :destroy, id: @like.id
      expect(Like.last).to eq(@like)
    end
  end
end