FactoryGirl.define do
  factory :multi_mail do
    to "MyString"
    from "MyString"
    subject "MyString"
    body "MyText"
  end
end
