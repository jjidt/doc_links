require 'rails_helper'

describe Snippet do
  it { should belong_to :category }
  it { should validate_presence_of :description }
end
