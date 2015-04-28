module HomePageSteps

  step 'ми відкрили початкову сторінку' do
    visit '/'
  end

  step 'в навігаційному меню я хочу бачити посилання на розділи' do
    Category.all.each do |category|
      expect(page).to have_link category.name
    end
  end

  step 'ми маємо бачити кількість елементів у відповідному розділі' do
  end

end

RSpec.configure { |c| c.include HomePageSteps }
