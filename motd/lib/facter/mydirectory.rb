Facter.add('mydirectory') do
  setcode do
    # Replace "/path/to/my/directory" with the path to your directory
    Dir.entries('/etc/puppetlabs/puppet/').reject { |f| File.directory? f }
  end
end
