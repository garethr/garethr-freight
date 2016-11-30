require 'spec_helper'

describe 'freight', :type => :class do
  it { should contain_package('freight') }
  it { should contain_apt__source('freight_team') }
end
