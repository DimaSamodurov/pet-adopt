require 'faker'

FactoryGirl.define do

  sequence :pet_sample do |n|
    Faker::Pet.pets[n%Faker::Pet.pets.size]
  end

  factory :pet do
    ignore do
      sample { OpenStruct.new(generate :pet_sample) }
    end

    name          { sample.name }
    description   { sample.description }
    species       { sample.species }

    state :new
  end
end
