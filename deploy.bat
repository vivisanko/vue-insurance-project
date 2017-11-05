call npm run build
git add .
pause
git commit -m "dist"
pause
git push origin master
pause
git checkout gh-pages
pause
git checkout master dist
pause
git commit -m "update dist"
pause
git push origin gh-pages
pause
git checkout master
