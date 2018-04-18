# share hosts
class profile::basic ()
{
  @@host{ $facts['fqdn'] :
    ensure    => present,
    ip        => $facts['ipaddress]',
  }

  Host <<| |>>
}
