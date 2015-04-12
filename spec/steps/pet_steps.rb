module PetSteps

  step 'в каталозі існує декілька тварин' do
    Pet.create name: 'Milly'
    Pet.create name: 'Billi'
    Pet.create name: 'Silli'
  end

  step 'ми відкрили сторінку тварин' do
    visit '/pets'
  end

  step 'всі тварини мають бути у списку' do
    Pet.all.each do |pet|
      expect(page).to have_content pet.name
    end
  end

  step 'існує заповнена картка тварини' do
    @pet = FactoryGirl.create :pet
  end

  step 'ми відкрили сторінку тварини'  do
    visit pet_path(@pet)
  end

  step 'має бути заповнена назва, вік, порода' do
    expect(page).to have_content @pet.name
    expect(page).to have_content ((Date.today.year * 12 + Date.today.month) - (@pet.date_of_birth.year * 12 + @pet.date_of_birth.month))
    expect(page).to have_content @pet.breed
  end

end

RSpec.configure { |c| c.include PetSteps }
