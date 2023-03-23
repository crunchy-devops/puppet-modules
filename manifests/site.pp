#if $osfamily == 'Debian'{
#  include chrony
#}
#class { 'motd':
#  template => 'motd/motd.epp',
#  content  => "Hello world\n",
#}
$directory = '/etc/puppetlabs/puppet'

$files = file("${directory}").children.each |$file| {
  $file
}

notify { "Files in ${directory}: ${files}": }




