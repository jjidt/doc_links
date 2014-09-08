require 'rails_helper'

describe Snippet do
  it { should belong_to :category }
end
