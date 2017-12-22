module NewsSteps

  step 'існує багато новин' do
    FactoryGirl.create_list :news, 20
  end

  step 'декілька новин' do
    News.create text: 'Milly'
    News.create text: 'Billi'
    News.create text: 'Silli'
  end

  step 'ми відкрили сторінку новин' do
    visit news_path
  end

  step 'останні :count новин мають бути у списку' do |count|
    expect(page).to have_selector('.news-line', count: count)
  end

end

RSpec.configure { |c| c.include NewsSteps }
