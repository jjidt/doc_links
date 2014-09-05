require 'rails_helper'

describe Link do
  it { should belong_to :category }
end
