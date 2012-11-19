# postgres
sed "s/^#.*listen_addresses.*/listen_addresses = '*'/" -i /usr/share/katello/install/puppet/modules/postgres/templates/postgresql.conf.erb

# elasticsearch
sed "s/^.*network.bind_host.*/network.bind_host: 0.0.0.0/" -i /usr/share/katello/install/puppet/modules/elasticsearch/templates/etc/elasticsearch/elasticsearch.yml.erb
sed "s/^.*network.publish_host.*/network.publish_host: 0.0.0.0/" -i /usr/share/katello/install/puppet/modules/elasticsearch/templates/etc/elasticsearch/elasticsearch.yml.erb
sed "s/^.*network.host.*/network.host: 0.0.0.0/" -i /usr/share/katello/install/puppet/modules/elasticsearch/templates/etc/elasticsearch/elasticsearch.yml.erb
