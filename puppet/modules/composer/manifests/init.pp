class composer {

  package { "curl":
    ensure => installed,
  }

  exec { 'composer_install':
    command => 'curl -sS https://getcomposer.org/installer | php && sudo mv composer.phar /usr/local/bin/composer',
    path    => '/usr/bin:/usr/sbin',
    require => Package['curl'],
    creates => '/usr/local/bin/composer',
    environment => ["COMPOSER_HOME=/home/vagrant"],
  }
}
