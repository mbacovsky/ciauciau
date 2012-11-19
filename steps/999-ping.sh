KATELLO_CLI=$(type -P katello || type -P headpin)
$KATELLO_CLI -u admin -p admin ping

echo "Installation complete, use 'ee' alias to see errors :-)"
