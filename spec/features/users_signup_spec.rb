require 'rails_helper'

feature 'user signs up' do
  scenario 'user submits invalid form and is not added to database' do
    visit signup_path

    fill_in('Name', :with => 'Fatty')
    fill_in('Email', :with => 'fatty@fatty.com')
    fill_in('Password', :with => 'fat')
    fill_in('Confirmation', :with => 'tat')

    before_count = User.count

    click_on('Create my account')

    after_count = User.count
    expect(before_count).to eq(after_count)
  end

  scenario 'user submits valid form' do
    visit signup_path

    fill_in('Name', :with => 'Fatty')
    fill_in('Email', :with => 'fatty@fatty.com')
    fill_in('Password', :with => 'annaishot')
    fill_in('Confirmation', :with => 'annaishot')

    before_count = User.count

    click_on('Create my account')

    after_count = User.count
    expect(before_count).to eq(0)
    expect(after_count).to eq(1)

    expect(page).to have_content("Welcome to the Sample App!")
  end
end
