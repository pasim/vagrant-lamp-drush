class drush::install {

  include pear

# If no version number is supplied, the latest stable release will be
# installed. In this case, upgrade PEAR to 1.9.2+ so it can use
# pear.drush.org without complaint.
  pear::package { "PEAR": }
  pear::package { "Console_Table": }
}

class drush {
  include drush::install

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
