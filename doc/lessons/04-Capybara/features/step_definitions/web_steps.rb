Коли 'я знахожусь на головній сторінці сайту' do
  visit '/'
end

Тоді 'на сторінці має відображатись головне меню із розділами:' do |table|
  within 'menu' do
    table.hashes.each do |hash|
      page.should have_css('', text: hash['Розділ'])
    end
  end
end

 А 'також для кожного розділу має відображатись кількість елементів всередині розділу' do

end



