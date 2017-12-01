node default {
  file {'/root/README':
    ensure  => file,
    content => 'Yoooo',
    owner   => 'root',
  }
}

node 'master.puppet.vm' {
  include role::master_server
}
