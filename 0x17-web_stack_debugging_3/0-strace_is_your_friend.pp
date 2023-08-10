# Manifest to correct typo in a file causing HTTP Response code 500 from Apache
exec {
  onlyif  => 'test -e /var/www/html/wp-settings.php',
  command => "sed -i 's/phpp/php/' /var/www/html/wp-settings.php",
  path    => '/usr/local/sbin/:/usr/local/bin:/usr/sabin:/usr/bin:/sbin:/bin',
}
