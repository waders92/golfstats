FactoryGirl.define do
  factory :note do
    message 'Test Message'
    association :user
    association :round
  end

  factory :comment do
    association :round
  end

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
    password 'secretPassword'
    password_confirmation 'secretPassword'
  end

  factory :round do
    course 'Test course'
    score '72'
    greens '10'
    greenstotal '18'
    fwys '7'
    fwystotal '14'
    putts '25'
    birdies '2'
    pars '2'
    association :user
  end

  factory :nineholeround do
    course 'Test course'
    score '40'
    greenshit '4'
    fwys '4'
    fwystotal '7'
    putts '18'
    birdies '2'
    pars '4'
    association :user
  end

end
