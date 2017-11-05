call npm run build
call git add .
call git commit -m "dist"
call git push origin master
call git checkout gh-pages
call git checkout master dist
call git commit -m "update dist"
call git push origin gh-pages
call git checkout master
