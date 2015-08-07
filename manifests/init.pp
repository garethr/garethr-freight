class freight ( $lib_dir         = '/var/lib/freight',
                $cache_dir       = '/var/cache/freight',
                $origin          = 'Freight',
                $label           = 'Freight',
                $enable_cache    = false,
                $gpg_key_address,
                $enable_symlinks = false,
              ) {

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

  file { $lib_dir:
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { $cache_dir:
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { '/etc/freight.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('freight/freight.conf.erb'),
  }
  
}
