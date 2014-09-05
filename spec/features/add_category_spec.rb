require 'rails_helper'
require 'login_helper'

describe 'adding a category' do
  before do
    user = FactoryGirl.create(:user)
    login({:name => 'john', :password => 'test'})
  end

  it 'adds the category on a users page' do
    click_link 'add-category'
    fill_in :name, :with => 'one'
    click_button 'submit'
    expect(page).to have_content 'categories'
    expect(page).to have_content 'one'
  end

  it 'add displays an error if category name is blank' do
    click_link 'add-category'
    click_button 'submit'
    expect(page).to have_content 'Incomplete information'
  end

end
