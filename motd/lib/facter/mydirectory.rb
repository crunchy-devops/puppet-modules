Facter.add('mydirectory') do
  setcode 'ls /etc/puppetlabs/puppet'
end
