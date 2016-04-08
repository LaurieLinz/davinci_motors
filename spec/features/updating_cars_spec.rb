require 'rails_helper'



  feature 'Editing Cars' do
    scenario 'can edit a car' do
      car = FactoryGirl.create(:car)
      car.save
    visit '/'

      click_link 'Edit'

      fill_in 'Year', with:'1968'

    end
  end






