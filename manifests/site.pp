node default {
  file {'/root/README':
    ensure  => file,
    content => 'Yoooo',
    owner   => 'root',
  }
}
