class firewall {
  firewall { '100 allow http and https access':
    proto  => 'tcp',
    dport  => [80, 443],
    action => 'accept',
  }
}
