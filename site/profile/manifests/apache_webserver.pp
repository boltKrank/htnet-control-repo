#Profile for an apache webserver with an example index.html
class profile::apache_webserver {

  include apache

  file {['/var','/var/www','/var/www/html']:
    ensure => directory,
  }

  file {'/var/www/html/index.html':
    ensure  => file,
    content => epp('profile/index.html.epp'),
  }


}
