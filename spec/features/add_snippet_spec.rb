require 'rails_helper'
require 'create_helper'

describe 'adding a code snippet to a category' do

  before { create_categories }

  it 'successfully adds a snippet to the category page' do
    click_link "ruby"
    click_link "add-snippet"
    fill_in :language, :with => "ruby"
    fill_in :description, :with => "prime sifter"
    fill_in :code, :with => "<code>"
    click_button ""
    expect(page).to have_content "prime sifter"
  end

  it 'displays an error if description is left blank' do
    click_link "ruby"
    click_link "add-snippet"
    fill_in :language, :with => "ruby"
    fill_in :description, :with => ""
    fill_in :code, :with => "<code>"
    click_button ""
    expect(page).to have_content "Incomplete information"
  end
end
