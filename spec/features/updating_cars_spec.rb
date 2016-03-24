require 'rails_helper'



  feature 'Editing Cars' do
    scenario 'can edit a car' do
      car = FactoryGirl.create(:car)
      car.save
    visit '/'

    # click_link 'New Car'
    #
    # fill_in 'Make', with: 'Ford'
    # fill_in 'Model', with: 'Mustang'
    # fill_in 'Year', with: '1967'
    # fill_in 'Price', with: '2300'
    #
    # click_button 'Create Car'
    # expect(page).to have_content('1967 Ford Mustang created')
    save_and_open_page
    click_link 'Edit'
      fill_in 'Year', with:'1968'

    end
  end






