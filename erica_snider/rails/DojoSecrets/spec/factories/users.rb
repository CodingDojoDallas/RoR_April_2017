FactoryGirl.define do
  factory :user do
    name "Herb"
    email "herb@clutter.com"
    password "password"
    password_confirmation "password"
  end
end
