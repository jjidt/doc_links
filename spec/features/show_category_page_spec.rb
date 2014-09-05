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
end
