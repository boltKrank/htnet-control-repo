class profile::haproxy {

  include ::haproxy

  haproxy::listen { 'loadbalancer':
    collect_exported => false,
    mode             => 'http',
    ipaddress        => $::ipaddress,
    ports            => '80',
  }
  haproxy::balancermember { 'web1':
    listening_service => 'loadbalancer',
    server_names      => 'web1.local',
    #ipaddresses       => '10.0.0.10',
    ports             => '80',
    options           => 'check',
  }
  haproxy::balancermember { 'web2':
    listening_service => 'loadbalancer',
    server_names      => 'web2.local',
    #ipaddresses       => '10.0.0.11',
    ports             => '80',
    options           => 'check',
  }

}
