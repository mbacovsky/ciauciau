
#git clone git@github.com:tstrachota/katello.git ~/katello/
cd ~/katello/
git remote add upstream git@github.com:Katello/katello.git
git fetch upstream
git checkout master
git merge upstream/master
git submodule init
git submodule update
