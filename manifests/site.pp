#if $osfamily == 'Debian'{
#  include chrony
#}
#class { 'motd':
#  template => 'motd/motd.epp',
#  content  => "Hello world\n",
#}
$my_directory = '/etc/puppetlabs/puppet/'
$directory_contents = generate('/usr/bin/ls', '/etc/puppetlabs/puppet/')

$directory_contents.each |$item| {
  notify{ $item :

  }
}



