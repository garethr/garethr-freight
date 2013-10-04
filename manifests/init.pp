class freight {
  package { 'freight':
    require => Apt::Source['rcrowley'],
  }

  apt::source { 'rcrowley':
    location    => 'http://packages.rcrowley.org',
    repos       => 'main',
    key         => '7DF49CEF',
    key_source  => 'http://packages.rcrowley.org/keyring.gpg',
    include_src => false,
  }
}
