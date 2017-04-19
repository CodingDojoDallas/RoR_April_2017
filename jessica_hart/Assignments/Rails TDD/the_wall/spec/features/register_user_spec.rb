require 'rails_helper'
feature "User signs in" do
  before(:each) do
    visit new_user_path
  end
  scenario "successfully with a newly registered name" do
    fill_in "user_name", with: "Lancelot"
    click_button "Sign In"
    expect(page).to have_content "Welcome Lancelot"
    expect(current_path).to eq(messages_path)
  end
  scenario "successfully with an existing registered name" do
    User.create(name: 'Arthur')
    fill_in "user_name", with: "Arthur"
    click_button "Sign In"
    expect(page).to have_content "Welcome Arthur"
    expect(current_path).to eq(messages_path)
  end
  scenario "unsuccessfully with an invalid name that's too short" do
    fill_in "user_name", with: "Sir"
    click_button "Sign In"
    expect(current_path).to eq(new_user_path)
  end
  scenario "unsuccessfully without filling out name field" do
    fill_in "user_name", with: ""
    click_button "Sign In"
    expect(page).to have_content "Name can't be blank"
  end
end
