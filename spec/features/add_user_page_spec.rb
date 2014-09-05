require 'rails_helper'

describe 'viewing a user' do
  it 'should go to the login page' do
    visit('/')
    click_link 'create-profile'
    expect(page).to have_content 'Create a new Profile'
  end
end
