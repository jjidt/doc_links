require 'rails_helper'
require 'create_helper'

describe 'showing a category page' do
  before do
    user = FactoryGirl.create(:user)
    login({:name => 'john', :password => 'test'})
    create_category({:name => "ruby"})
    create_category({:name => "javascript"})
  end
  it 'opens a category page' do
    click_link "ruby"
    expect(page).to have_content "ruby"
    expect(page).to have_content "links"
  end
  it 'returns to the previous page when back link is clicked' do
    click_link "ruby"
    click_link "back"
    expect(page).to have_content "Your categories"
  end
end
