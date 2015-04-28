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

  step 'в каталозі тварин конкретного виду не існує жодної тварини' do
    Pet.delete_all
  end

  step 'ми знаходимося на головній сторінці' do
    visit '/'
  end

  step 'така група тварин не відображається взагалі' do
    expect(page).to have_no_content '[0]'
  end

  step 'обраємо "Подати оголошення"' do
    find('.large-8.columns.about-content').click_link('Подати оголошення')
  end

  step 'я маю бачити картку тварини' do
    expect(current_path).to eq(new_pet_path)
  end

  step 'я заповнив поля картки тварини' do
    fill_in 'pet_name', with: 'Tom'
    fill_in 'pet_description', with: 'Super cat'
    fill_in 'pet_state', with: 'new'
    select('Коти', from: 'pet_species')
    fill_in 'pet_breed', with: 'pers'
  end

  step 'натиснув "Подати Оголошення"' do
    click_button 'Подати Оголошення'
  end

  step 'перейшовши на перелік тварин' do
    visit pets_path
  end

  step 'я маю побачити це оголошення' do
    expect(find('.pet-list')).to have_content 'Tom'
    expect(find('.pet-list')).to have_content 'Super cat'
    expect(find('.pet-list')).to have_content 'new'
  end

end

RSpec.configure { |c| c.include PetSteps }
