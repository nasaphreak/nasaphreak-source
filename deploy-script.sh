git add remote pages https://github.com/nasaphreak/nasaphreak.github.io.git
git checkout -b deploy

npm install
npm run build

git filter-branch -f --subdirectory-filter ./dist/nasaphreak/ deploy

git push pages master

#limpar depois