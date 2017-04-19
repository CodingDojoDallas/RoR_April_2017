require 'rails_helper'
feature "User logs out" do
  before(:each) do
    visit new_user_path
    fill_in "user_name", with: "Lancelot"
    click_button "Sign In"
  end
  scenario "successfully with link" do
    expect(page).to have_content "Log Out"
    click_link "Log Out"
    expect(current_path).to eq(new_user_path)
  end
end
