class drush {

  exec{ 'download-drush':
    command   => "/usr/bin/wget -q https://github.com/drush-ops/drush/releases/download/8.0.0-rc4/drush.phar -O /usr/local/bin/drush",
    creates   => "/usr/local/bin/drush",
    user => root,
  }

  file{ "/usr/local/bin/drush":
    mode   => 0777,
    require => Exec['download-drush'],
  }

}
