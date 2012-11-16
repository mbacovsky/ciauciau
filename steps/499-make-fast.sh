cat >> /usr/share/katello/install/puppet/modules/postgres/templates/postgresql.conf.erb <<EOFPG
fsync=off
synchronous_commit=off
full_page_writes=off
bgwriter_lru_maxpages=0
EOFPG

#[ -f /etc/pulp/cds.conf ] && sed -i 's/^verify_checksum = true$/verify_checksum = false/' /etc/pulp/cds.con
