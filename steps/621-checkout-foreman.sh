
FOREMAN_DIR=~/foreman/

git clone git@github.com:mbacovsky/foreman.git $FOREMAN_DIR
pushd $FOREMAN_DIR
git remote add upstream git@github.com:theforeman/foreman.git
git fetch upstream
git checkout develop
git merge upstream/develop
git submodule init
git submodule update
popd


