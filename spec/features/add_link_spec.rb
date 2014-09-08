require 'rails_helper'
require 'create_helper'

describe 'adding a link' do
  before do
    user = FactoryGirl.create(:user)
    login({:name => 'john', :password => 'test'})
    create_category({:name => "ruby"})
    create_category({:name => "javascript"})
  end

  it "adds a link to category page" do
    click_link "ruby"
    click_link "add-link"
    fill_in :url, :with => "http://www.ebay.com"
    fill_in :name, :with => "ebay"
    click_button ""
    expect(page).to have_content "ebay"
  end

  it "displays an error if link fields are blank" do
    click_link "ruby"
    click_link "add-link"
    click_button ""
    expect(page).to have_content "Incomplete information"
  end
end
