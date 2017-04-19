FactoryGirl.define do
  factory :secret do
    context "MyText"
    user User.find_by(name: "Herb")  # nil
  end
end
