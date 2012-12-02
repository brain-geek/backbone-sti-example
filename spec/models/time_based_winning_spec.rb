require 'spec_helper'

describe TimeBasedWinning do
  it_behaves_like "winning"

  it { should accept_values_for(:measure, "hour", "day", "week", "month", "year" ) }
  it { should_not accept_values_for(:measure, nil, '', 'asdfsdfa', 'erwq') }

  it { should validate_presence_of :x }
  it { should validate_numericality_of :x }  
end
