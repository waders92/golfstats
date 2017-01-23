FactoryGirl.define do
  factory :user do
    sequence :first_name do |n|
      "dummyfirstname#{n}"
    end
    sequence :last_name do |n|
      "dummylastname#{n}"
    end
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end
    password "secretPassword"
    password_confirmation "secretPassword"
  end
end
