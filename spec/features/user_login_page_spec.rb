require 'rails_helper'

describe 'Logging in a user' do
  it 'successfully logs in a user' do
    user = FactoryGirl.create(:user)
    visit '/'
    click_link 'login'
    fill_in :name, :with => "john"
    fill_in :password, :with => "test"
    click_button ''
    expect(page).to have_content 'Logged in'
  end
end
