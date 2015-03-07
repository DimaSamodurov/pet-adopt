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

end

RSpec.configure { |c| c.include PetSteps }
