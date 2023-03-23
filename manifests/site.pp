#if $osfamily == 'Debian'{
#  include chrony
#}
#class { 'motd':
#  template => 'motd/motd.epp',
#  content  => "Hello world\n",
#}
exec { 'my_exec_command':
  command => 'ls -alrt',
  patch => '/user/bin:/usr/local/bin',
  cwd => '/etc/puppetlasbs/puppet',
  logoutput => true,
}

$result = []
Exec['my_exec_command']->Notify[ 'result']

notify{'results':
  message => "c'est la directory puppet : ${result}",
}

$result = split($::output,"\n")


