Коли 'я знахожусь на головній сторінці сайту' do
  visit '/capybara'
end

# Тоді 'на сторінці має відображатись головне меню із розділами:' do |table|
#   within 'menu' do
#     table.hashes.each do |hash|
#       page.should have_css('', text: hash['Розділ'])
#     end
#   end
# end

Тоді 'в описі бібліотеки є посилання на сайт Ruby' do
  @link_selector = '.intro>p>a'
  @link_container = '.intro'
  @link_text = 'Ruby'
  page.should have_css(@link_selector, text: 'Ruby')
end

I /це посилання відкривається і містить "(.*)"/ do |sample|
  within @link_container do
    click_on @link_text
  end

  page.should have_text sample
end



