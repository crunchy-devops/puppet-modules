if $osfamily == 'Debian'{
  include chrony
}
class { 'motd':
  template => 'motd/motd.epp',
  content  => "Hello world\n",
}