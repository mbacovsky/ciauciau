cat > "/etc/yum.repos.d/$THE_REPO_NAME.repo" <<EOF
[$THE_REPO_NAME]
name=$THE_REPO_NAME
baseurl=$THE_REPO
enabled=1
gpgcheck=0
EOF

yum makecache
