require 'spec_helper'

describe Category do
  it { should belong_to(:restaurant) }
  it { should belong_to(:tag)}
end
