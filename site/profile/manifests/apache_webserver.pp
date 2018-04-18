#Profile for an apache webserver with an example index.html
class profile::apache_webserver {

  include apache

  file {'/var/www':
    ensure => directory,
  }

  file {'/var/www':
    ensure  => file,
    content => epp('profile/index.html.epp'),
  }


}
