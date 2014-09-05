require 'rails_helper'

describe Category do
  it { should belong_to :user }
end
