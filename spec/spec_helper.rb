require 'puppetlabs_spec_helper/module_spec_helper'

RSpec.configure do |c|
  c.default_facts = {
    :osfamily => 'Debian',
    :operatingsystem => 'Ubuntu',
    :ipaddress => '192.168.0.1',
    :lsbdistcodename => 'trusty',
    :lsbdistdescription => 'Ubuntu 14.04 LTS',
    :lsbdistid => 'Ubuntu',
    :lsbdistrelease => '14.04',
    :lsbmajdistrelease => '14',
    :kernel => 'Linux'
  }
end
