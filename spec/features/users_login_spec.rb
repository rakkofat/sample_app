require 'rails_helper'

feature 'user logs in' do
  let!(:user) { FactoryGirl.create(:user) }
  scenario 'login with invalid information' do
    visit login_path

    expect(page).to have_content("New user? Sign up now!")

    fill_in('Email', :with => "")
    fill_in('Password', :with => "")

    click_button('Log in')

    expect(page).to have_content("New user? Sign up now!")
    expect(page).to have_selector('div.flash')

    visit root_path

    expect(page).to_not have_selector('div.flash')
  end

  scenario 'login with valid information' do
    visit login_path

    expect(page).to have_link('Log in')

    fill_in('Email', :with => user.email)
    fill_in('Password', :with => user.password)

    expect(page).to_not have_link('Log in')
    expect(page).to have_link('Users')
    expect(page).to have_link('Profile')
    expect(page).to have_link('Settings')
    expect(page).to have_link('Log out')
  end




end
