class freight {
  package { 'freight':
    ensure  => installed,
    require => Exec['ensure-up-to-date-repository'],
  }

  exec { 'ensure-up-to-date-repository':
    command     => '/usr/bin/apt-get update',
    refreshonly => true,
    require     => Apt::Source['rcrowley'],
  }

  apt::source { 'rcrowley':
    location    => 'http://packages.rcrowley.org',
    repos       => 'main',
    key         => "7DF49CEF",
    key_source  => "http://packages.rcrowley.org/keyring.gpg",
    include_src => false,
  }
}
