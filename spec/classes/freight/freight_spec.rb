require 'spec_helper'

describe 'freight', :type => :class do
  let(:facts) { {:lsbdistcodename => "lucid"} }
  it { should contain_package('freight')}
  it { should contain_apt__source('rcrowley')}
end
