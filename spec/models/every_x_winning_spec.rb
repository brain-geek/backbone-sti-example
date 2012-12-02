require 'spec_helper'

describe EveryXWinning do
  it { should validate_presence_of :x }
  it { should validate_numericality_of :x }

  it_behaves_like "winning"
end
