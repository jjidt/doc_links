require 'rails_helper'
require 'create_helper'

describe 'viewing a snippet' do

  before { create_categories }

  it 'should successfully visit a snippet page' do
    click_link "ruby"
    click_link "add-snippet"
    fill_in :language, :with => "ruby"
    fill_in :description, :with => "prime sifter"
    fill_in :code, :with => "<code>"
    click_button ""
    click_link "prime sifter"
    expect(page).to have_content "<code>"
  end

end
