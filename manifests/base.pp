node default {
  file { '/etc/motd':
    content => 'DevCoMo Super Secret Servers.',
  }

  package {'apache2':
    ensure => installed,
  }

  service {'apache2':
    ensure  => running,
    require => Package['apache2'],
  }

}
