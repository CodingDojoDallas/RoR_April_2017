require 'rails_helper'
feature "User posts message" do
  before(:each) do
    visit new_user_path
    fill_in "user_name", with: "Lancelot"
    click_button "Sign In"
  end
  scenario "successfully with valid input" do
    fill_in "content", with: "This is a message to be posted."
    click_button "Post a Message"
    expect(page).to have_content "This is a message to be posted."
    expect(current_path).to eq(messages_path)
  end
  scenario "unsuccessfully with invalid input" do
    fill_in "content", with: "..."
    click_button "Post a Message"
    expect(page).to have_content "Content is too short"
    expect(current_path).to eq(messages_path)
  end
  scenario "unsuccessfully with no input" do
    click_button "Post a Message"
    expect(page).to have_content "Content can't be blank"
    expect(current_path).to eq(messages_path)
  end
end
feature "Unlogged user posts message" do
  scenario "unsuccessfully with valid input" do
    visit messages_path
    fill_in "content", with: "This is a message to be posted."
    click_button "Post a Message"
    expect(page).to have_content "You must be signed in to post a message."
    expect(current_path).to eq(messages_path)
  end
end
