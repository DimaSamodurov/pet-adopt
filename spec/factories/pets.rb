require 'faker'

FactoryGirl.define do

  sequence :pet_sample do |n|
    Faker::Pet.pets[n%Faker::Pet.pets.size]
  end

  factory :pet do
    transient do
      sample { OpenStruct.new(generate :pet_sample) }
    end

    name          { sample.name }
    description   { sample.description }
    species       { sample.species }
    date_of_birth { Date.new(2015,3,1) }
    sex           {"male"} 
    size          {"medium"}   
    breed         {"chihuahua"}

    state :new

    after(:create) do |pet, evaluator|
      if evaluator.sample.image_path
        file_path = File.join(Rails.root, 'lib/sample', evaluator.sample.image_path)
        File.open(file_path, 'rb') do |file|
          pet.uploads.create(image: file)
        end
      end
    end
  end
end
