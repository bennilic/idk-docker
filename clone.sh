BASEDIR=$(dirname "$0")
echo $BASEDIR
cd $BASEDIR

REPO=0
git_clone_pull()
{
    arrIN=(${REPO//// }) 
    arrIN=(${arrIN[1]//./ })
    if [ -d "../${arrIN}" ]; then
        cd ../${arrIN}
        git fetch --all
        git pull 
        cd ../idk-docker
    else
        git -C .. clone $REPO
    fi
}

REPO=git@github.com:bennilic/idk-docker.git
git_clone_pull

REPO=git@github.com:bennilic/idk-backend.git
git_clone_pull

REPO=git@github.com:bennilic/idk-frontend.git
git_clone_pull

REPO=git@github.com:bennilic/idk-frontend-2.git
git_clone_pull
