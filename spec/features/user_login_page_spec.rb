require 'rails_helper'

describe 'Logging in a user' do
  before { user = FactoryGirl.create(:user) }

  it 'successfully logs in a user' do
    visit '/'
    click_link 'login'
    fill_in :name, :with => 'john'
    fill_in :password, :with => 'test'
    click_button ''
    expect(page).to have_content 'Logged in'
  end

  it 'displays an error message if the password is incorrect' do
    visit '/'
    click_link 'login'
    fill_in :name, :with => 'john'
    fill_in :password, :with => 'nope'
    click_button ''
    expect(page).to have_content 'Incorrect information'
  end

  it 'displays an error message if the name is not found' do
    visit '/'
    click_link 'login'
    fill_in :name, :with => 'johnny'
    fill_in :password, :with => 'test'
    click_button ''
    expect(page).to have_content 'Incorrect information'
  end
end
