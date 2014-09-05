require 'rails_helper'

describe Category do
  it { should belong_to :user }
  it { should validate_presence_of :name }
  it { should validate_presence_of :user_id }
end
