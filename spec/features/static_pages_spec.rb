require "rails_helper"

feature 'site layout' do
  scenario 'user clicks on About' do
    visit root_path
    click_on('About')

    expect(page).to have_current_path(about_path)
  end

  scenario 'user clicks on Contact' do
    visit root_path
    click_on('Contact')

    expect(page).to have_current_path(contact_path)
  end

  scenario 'user clicks on Help' do
    visit root_path
    click_on('Help')

    expect(page).to have_current_path(help_path)
  end

  scenario 'user clicks on Home' do
    visit contact_path
    click_on('Home')

    expect(page).to have_current_path(root_path)
  end

  scenario 'user able to click on two home links' do
    visit root_path
    page.assert_selector(:link, nil, href: root_path, :count => 2)
  end


end
