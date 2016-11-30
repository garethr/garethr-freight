class freight {
  package { 'freight':
    require => Apt::Source['freight_team'],
  }

  apt::source { 'freight_team':
    location    => 'http://build.openvpn.net/debian/freight_team/',
    release     => $::lsbdistcodename,
    repos       => 'main',
    key         => '30EBF4E73CCE63EEE124DD278E6DA8B4E158C569',
    key_source  => 'https://swupdate.openvpn.net/repos/repo-public.gpg',
    include_src => false,
  }
}
