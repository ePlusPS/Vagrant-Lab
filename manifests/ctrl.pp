#package {"git": ensure=>present}
user {"test": ensure=>'present',} ->
ssh_authorized_key { 'test':
  user => 'test',
  type => 'ssh-rsa',
  key  => 'AAAA...Q==',
}
