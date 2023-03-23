#if $osfamily == 'Debian'{
#  include chrony
#}
#class { 'motd':
#  template => 'motd/motd.epp',
#  content  => "Hello world\n",
#}
$my_directory = '/etc/puppetlabs/puppet/'
$directory_contents = generate('file','list',$my_directory)

$directory_contents.each |$item| {
  notify{ $item :

  }
}



