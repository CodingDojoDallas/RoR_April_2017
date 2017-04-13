require 'rails_helper'

RSpec.describe User, type: :model do
  context "With valid attributes" do
    it "should save" do
      user = User.new(name: 'Lancelot')
      expect(user).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if name field is blank" do
      user = User.new(name: "")
      expect(user).to be_invalid
    end

    it "should not save if name field is 5 characters or less" do
      user = User.new(name: "Lance")
      expect(user).to be_invalid
    end

    it "should not save if name already exists" do
      user = User.create(name: 'Lancelot')
      user2 = User.new(name: 'lancelot')
      expect(user2).to be_invalid
    end
  end
end
