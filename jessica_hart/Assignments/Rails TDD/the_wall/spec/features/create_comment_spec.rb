require 'rails_helper'
feature "User posts comment" do
  before(:each) do
    visit new_user_path
    fill_in "user_name", with: "Lancelot"
    click_button "Sign In"
    fill_in "content", with: "This is a message to be posted."
    click_button "Post a Message"
  end
  scenario "successfully with valid input" do
    fill_in "cmt_content", with: "This is a comment to be posted."
    click_button "Post a Comment"
    expect(page).to have_content "This is a comment to be posted."
    expect(current_path).to eq(messages_path)
  end
  scenario "unsuccessfully with invalid input" do
    fill_in "cmt_content", with: "..."
    click_button "Post a Comment"
    expect(page).to have_content "Content is too short"
    expect(current_path).to eq(messages_path)
  end
  scenario "unsuccessfully with no input" do
    click_button "Post a Comment"
    expect(page).to have_content "Content can't be blank"
    expect(current_path).to eq(messages_path)
  end
  scenario "unsuccessfully with valid input after logging out" do
    click_link "Log Out"
    visit messages_path
    fill_in "cmt_content", with: "This is a message to be posted."
    click_button "Post a Comment"
    expect(page).to have_content "You must be signed in to comment on a post."
    expect(current_path).to eq(messages_path)
  end
end
