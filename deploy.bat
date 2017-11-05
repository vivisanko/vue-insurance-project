git add .
git commit -m "dist"
git push origin master
git checkout gh-pages
git checkout master dist
git commit -m "update dist"
git push origin gh-pages
git checkout master
