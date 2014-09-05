require 'rails_helper'
require 'login_helper'

describe 'adding a category' do
  it 'adds the category on a users page' do
    user = FactoryGirl.create(:user)
    login({:name => 'john', :password => 'test'})
    click_link 'add-category'
    fill_in :name, :with => 'one'
    click_button 'submit'
    expect(page).to have_content 'categories'
    expect(page).to have_content 'one'
  end
end
