class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCcI5OBPinOg2MAot+7ceYInebhOXcPBRvZyXLJVk4zLw/fBg/1HjVlKFSQU7qyILNXZZiS1r7yVT+cPvvVIR5MkS+q8NuDHR5I43zqC0yOims6ByTMUiN3YtnUf0gT31lJ7eJvkC9UiSToDjguYXowowqRn8FN5rRWPpo/Nszd9t7yYblyXrAeFX768xEF72ZUiU30Mq9Eg1VCudJdHeSc2GHsitp55C91FiwTDebkkgTwUao8XMB1iVjFcmQy4sNuVS0tjswcDUxQboynY3g6Q5By43pdVLCDxWzowxuQxlGDO85NreDYikL99CNTKwgSDFKCk8fn+zIWaNHT7KZT',
	}  
}
