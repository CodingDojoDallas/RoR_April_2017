FactoryGirl.define do
  factory :like do
    user User.find_by(name: "Herb")  # nil
    secret Secret.first  # nil
  end
end
