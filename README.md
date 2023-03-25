# puppet-modules

# install puppet server using docker
```shell
cd 
git clone
docker run -d --name master --hostname puppet  -v .:/etc/puppetlabs/code/environments/main \
puppet/puppetserver
```
# set an alias for the vm
```shell
docker exec -it master puppet agent -t --environment main
```