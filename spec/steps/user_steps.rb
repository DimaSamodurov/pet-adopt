module UsersSteps

  step 'в базі даних має бути створений хоча б один користувач' do
    User.delete_all
    @user = FactoryGirl.create :user
  end

  step 'в базінемає ні одного користувача' do
    User.delete_all
  end

  step 'залогований користувач' do
    visit new_user_session_path
    within("#new_user") do
      fill_in 'user_email', with: 'test@example.com'
      fill_in 'user_password', with: 'pasword123'
    end
    find('#new_user').click_button('Увійти')
  end

  step 'я відкрив головну сторінку' do
    visit root_path
  end

  step 'обрав "Увійти"' do
    find('.top-bar').click_link('Увійти')
  end

  step 'обрав "Вийти"' do
    find('.top-bar').click_link('Вийти')
  end

  step 'обрав "Зареєструватись"' do
    find('.top-bar').click_link('Зареєструватись')
  end

  step 'я маю бачити форму для вводу емейла і пароля' do
    expect(current_path).to eq(new_user_session_path)
    within("#new_user") do
      expect(page).to have_css("#user_email")
      expect(page).to have_css("#user_password")
    end
  end

  step 'я маю бачити форму для вводу імені, емейлу, пароля та його підтвердження' do
    expect(current_path).to eq(new_user_registration_path)
    within("#new_user") do
      expect(page).to have_css("#user_name")
      expect(page).to have_css("#user_email")
      expect(page).to have_css("#user_password")
    end
  end

  step 'я ввів емейл і пароль' do
    within("#new_user") do
      fill_in 'user_email', with: 'test@example.com'
      fill_in 'user_password', with: 'pasword123'
    end
  end

  step 'я ввів імя, емейлу, пароля та його підтвердження' do
    within("#new_user") do
      fill_in 'user_email', with: 'test@example.com'
      fill_in 'user_password', with: 'pasword123'
      fill_in 'user_password_confirmation', with: 'pasword123'
    end
  end

  step 'натиснув "Увійти"' do
    find('#new_user').click_button('Увійти')
  end

  step 'натиснув "Зареєструватись"' do
    find('#new_user').click_button('Зареєструватись')
  end

  step 'я маю повернутись на головну сторінку' do
    expect(current_path).to eq(root_path)
  end

  step 'бачити повідомлення успішного входу на сайт' do
    expect(page).to have_content "Signed in successfully."
  end

  step 'бачити повідомлення успішного виходу із системи' do
    expect(page).to have_content "Signed out successfully."
  end

  step 'бачити повідомлення успошної реєстрації в системі' do
    expect(page).to have_content "Welcome! You have signed up successfully."
  end

end

RSpec.configure { |c| c.include UsersSteps }