call jekyll build
git branch -D master
git checkout -b master
git add _site/*
git commit -m "auto commit by git-publish-io"
git filter-branch --subdirectory-filter _site/ -f
git rm -rf --cached git-publish-io.bat
git commit -m "auto commit by git-publish-io. Remove bat file from master"
git checkout -f source
git push origin --delete master
git push --all origin