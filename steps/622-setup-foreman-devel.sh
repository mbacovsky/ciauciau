FOREMAN_DIR=~/foreman/

cp $FOREMAN_FIR/config/settings.yaml.example $FOREMAN_DIR/config/settings.yaml

cp /etc/foreman/database.yml $FOREMAN_DIR/config/database.yml
cat /etc/foreman/database.yml | sed 's/production:/development:/' >> $FOREMAN_DIR/config/database.yml

pushd $FOREMAN_DIR
bundle install --without mysql mysql2 sqlite libvirt --path vendor

bundle exec rake db:migrate
popd

service foreman stop
chkconfig foreman off

