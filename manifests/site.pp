#if $osfamily == 'Debian'{
#  include chrony
#}
#class { 'motd':
#  template => 'motd/motd.epp',
#  content  => "Hello world\n",
#}
exec { 'my_exec_command':
  command => 'ls -alrt',
  path   =>'/usr/bin/:/usr/local/bin',
  cwd  => '/etc/puppetlabs/puppet/',

}



