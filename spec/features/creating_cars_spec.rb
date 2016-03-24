require 'rails_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang created')
  end

  scenario 'can show a list of multiple cars' do

    car1 = FactoryGirl.create(:car)
    car2 = FactoryGirl.create(:car)
    visit '/'
    expect(page).to have_content(car1.model)
    expect(page).to have_content(car2.model)

  end

  scenario 'can a user create a second car' do
    FactoryGirl.create(:car)
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'
    expect(page).to have_content('1967 Ford Mustang created')
  end
end




