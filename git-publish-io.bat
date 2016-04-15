call jekyll build
git branch -D master
git checkout -b master
git add _site/*
git commit -m "auto commit by git-publish-io"
git filter-branch --subdirectory-filter _site/ -f
git checkout source
git push --all origin