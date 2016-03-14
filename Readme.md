Creates a Drupal ready Virtual machine;

You get everything you need;

1. Database - drupal
2. mysql user "root", password - "root". Database engine mysql
3. Use folder sites/drupal to operate with drupal core and contrib. Requires a separate download.
4. You have pear, composer, php-apc, php-xdebug and rest of extensions needed for drupal
5. Provides full drush support.

Tested for both Drupal8 and Drupal7

Prerequesites

1. https://www.vagrantup.com - vagrant
2. ViruatlBox

How to install?

1. Clone this respository
2. From the root folder execute "vagrant up"
3. Make yourself a tea - build will take arround 10 minutes.
4. Once finished navigate your brovser to http://drupal or extecute "vagrant ssh" from the project root.
