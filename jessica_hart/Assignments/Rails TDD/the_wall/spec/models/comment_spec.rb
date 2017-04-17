require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
    User.create(name: "Guinevere", id: 5)
    Message.create(content: "This is a message.", id: 5, user_id: 5)
  end

  context "With valid attributes" do
    it "should save" do
      cmt = Comment.new(content: "This is a comment.", message_id: 5, user_id: 5)
      expect(cmt).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if content field is blank" do
      cmt = Comment.new(content: "", message_id: 5, user_id: 5)
      expect(cmt).to be_invalid
    end

    it "should not save if content field is 10 characters or less" do
      cmt = Comment.new(content: "This is...", message_id: 5, user_id: 5)
      expect(cmt).to be_invalid
    end

    it "should not save if user reference is blank" do
      cmt = Comment.create(content: "This is a comment.", message_id: 5, user_id: "")
      expect(cmt).to be_invalid
    end

    it "should not save if message reference is blank" do
      cmt = Comment.create(content: "This is a comment.", message_id: "", user_id: 5)
      expect(cmt).to be_invalid
    end

  end
end
