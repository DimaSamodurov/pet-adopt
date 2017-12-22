module HomePageSteps

  step 'ми відкрили початкову сторінку' do
    visit '/'
  end

  step 'в навігаційному меню я хочу бачити посилання на розділи:' do |categories|
    categories.each do |category|
      within('.main-menu') do
        find_link(category[0]) != nil
      end
    end
  end

  step 'ми маємо бачити кількість елементів у відповідному розділі' do
    Category.all.each do |category|
      within('.main-menu') do
        if category.count > 0
          expect(page).to have_content category.count.to_s
        end
      end
    end
  end

end

RSpec.configure { |c| c.include HomePageSteps }
