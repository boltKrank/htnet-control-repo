class profile::haproxy {

include ::haproxy
  haproxy::listen { 'puppet00':
    collect_exported => false,
    ipaddress        => $::ipaddress,
    ports            => '80',
  }
  haproxy::balancermember { 'web1':
    listening_service => 'puppet00',
    server_names      => 'web1',
    ipaddresses       => '192.168.0.100',
    ports             => '80',
    options           => 'check',
  }
  haproxy::balancermember { 'web2':
    listening_service => 'puppet00',
    server_names      => 'web2',
    ipaddresses       => '192.168.0.101',
    ports             => '80',
    options           => 'check',
  }

}
