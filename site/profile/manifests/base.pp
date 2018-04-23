class profile::base {

  @@host { $::fqdn:
    ensure => present,
    alias => $::hostname,
    address => $::ipaddress,
  }

  host<<||>>
  
}
