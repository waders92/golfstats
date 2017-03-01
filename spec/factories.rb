FactoryGirl.define do
  factory :photo do
    
  end
  factory :lesson do
    
  end
  factory :membership do
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

  factory :message do
    message 'Test message'
  end
end
