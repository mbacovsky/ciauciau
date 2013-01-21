vim +2 /etc/katello/katello.yml 2> /dev/null <<EOF
/test:
:r !cat /etc/katello/katello.yml | grep -e '^production:' -A 10 -m 1 | grep -e '^  database:' -A 3 | sed -s 's/katelloschema/katellotest/'
:wq
EOF

su postgres -c 'createdb katellotest --owner katellouser' 2> /dev/null
