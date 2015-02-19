Дано 'в каталозі існує декілька тварин' do
  Pet.create name: 'Milly'
end

Нехай 'ми відкрили сторінку тварин' do
  visit '/pets'
end

Тоді 'всі тварини мають бути у списку' do
  Pet.all.each do |pet|
    expect(page).to have_content pet.name
  end
end
