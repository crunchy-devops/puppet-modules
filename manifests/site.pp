#if $osfamily == 'Debian'{
#  include chrony
#}
#class { 'motd':
#  template => 'motd/motd.epp',
#  content  => "Hello world\n",
#}
$directory = '/etc/puppetlabs/puppet'

file { $directory:
  ensure => directory,
}

$files = file("${directory}").children.each |$file| {
  $file
}

notify { "Files in ${directory}: ${files}": }




