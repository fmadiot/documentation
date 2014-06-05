echo "Build $TRAVIS_JOB_NUMBER"
echo "Git: $TRAVIS_COMMIT [$TRAVIS_BRANCH]"
mkdir temp
cd temp
echo "Clone documentation repo and heckout gh-pages branch"
git clone https://$GITHUB_TOKEN@github.com/UML-Designer/documentation.git -b gh-pages --quiet
echo "Remove existing documentation web site old content"
find . | grep -v ".git\|toc.xml\|_site" | xargs rm -r
ls
echo "Move new documentation web site content to root"
mv ../../_site/* .
echo "Remove generated site repository"
rm -r ../../_site
echo "gh-pages branch root content"
ls
echo "Push new documentation web site content on gh-pages branch"
git config user.email "melanie.bats@obeo.fr"
git config user.name "Mélanie Bats"
#git add -A
#git commit -m "Promoting a new documentation web site for https://github.com/UML-Designer/documentation/commit/$TRAVIS_COMMIT [$TRAVIS_BRANCH]"
#git push origin gh-pages --quiet &>/dev/null
echo "Site promoted."
