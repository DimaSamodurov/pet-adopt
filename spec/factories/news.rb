require 'faker'

FactoryGirl.define do

  factory :news do
    text       { Faker::Lorem.paragraph }
    created_at { Faker::Date.between(2.days.ago, Date.today) }
  end

end
