
KATELLO_SRC_DIR="/root/katello/"

git clone git@github.com:mbacovsky/katello.git "$KATELLO_SRC_DIR"
git --git-dir="$KATELLO_SRC_DIR/.git/" remote add upstream git@github.com:Katello/katello.git
git --git-dir="$KATELLO_SRC_DIR/.git/" fetch upstream
git --git-dir="$KATELLO_SRC_DIR/.git/" checkout master
git --git-dir="$KATELLO_SRC_DIR/.git/" merge upstream/master
git --git-dir="$KATELLO_SRC_DIR/.git/" submodule init
git --git-dir="$KATELLO_SRC_DIR/.git/" submodule update
