#package {"git": ensure=>present}
user {"test": ensure=>'present',
	home => '/home/test',
	managehome => 'true'} ->
file {"/home/test/.ssh":
	ensure	=> 'directory',
	mode 	=> 0777,} ->
ssh_authorized_key { 'test':
  	ensure	=> 'present',
  	user 	=> 'test',
  	type 	=> 'ssh-rsa',
  	key  	=> 'AAAA...Q==',
	} 