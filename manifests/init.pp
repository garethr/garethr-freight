class freight {
  package { 'freight':
    ensure => installed,
  }

  apt::source { 'rcrowley':
    location    => 'http://packages.rcrowley.org',
    repos       => 'main',
    key         => "7DF49CEF",
    key_source  => "http://packages.rcrowley.org/keyring.gpg",
    include_src => false,
  }
}
