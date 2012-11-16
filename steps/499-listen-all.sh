sed "s/^#.*listen_addresses.*/listen_addresses = '*'/" -i /usr/share/katello/install/puppet/modules/postgres/templates/postgresql.conf.erb
