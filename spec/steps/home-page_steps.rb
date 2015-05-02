module HomePageSteps

  step 'ми відкрили початкову сторінку' do
    visit '/'
  end

  step 'в навігаційному меню я хочу бачити посилання на розділи:' do |categories|
    #Category.all.each do |category|
    categories.each do |category|
      within(".large-4.columns") do
        find_link(category[0]).visible?
      end
    end
  end

  step 'ми маємо бачити кількість елементів у відповідному розділі' do
    Category.all.each do |category|
      within(".large-4.columns") do
        if category.count > 0
          expect(page).to have_content category.count.to_s
        end
      end
    end
  end

end

RSpec.configure { |c| c.include HomePageSteps }
