require 'rails_helper'

describe 'viewing a user' do
  it 'should go to the login page' do
    visit('/')
    click_link 'create-profile'
    expect(page).to have_content 'Create a new Profile'
  end
end

describe 'creating a new user' do
  it 'should create a user and return to the homepage' do
    visit('/')
    click_link 'create-profile'
    fill_in 'name', :with => 'user'
    fill_in :password, :with => 'test'
    fill_in :confirm_password, :with => 'test'
    click_button 'Create User'
    expect(page).to have_content 'user created successfully'
  end
  it 'should display an error message when user name form field is blank' do
    visit('/')
    click_link 'create-profile'
    fill_in 'name', :with => ''
    fill_in :password, :with => 'test'
    fill_in :confirm_password, :with => 'test'
    click_button 'Create User'
    expect(page).to have_content 'incomplete information'
  end
end
