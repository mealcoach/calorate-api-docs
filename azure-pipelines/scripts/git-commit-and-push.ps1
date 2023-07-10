$BRANCH=$args[0]
$FILETOCOMMIT=$args[1]
$COMMITMSG=$args[2]

ECHO "Setting git config..."
git config --global user.email "buildbot@mealcoach.io"
git config --global user.name "Calorate Build Bot"

ECHO "CHECK GIT STATUS..."
git status

ECHO "CHECK OUT BRANCH..."
git checkout -b $BRANCH

ECHO "GIT ADD..."
git add $FILETOCOMMIT

ECHO "Commiting the changes..."
git commit -m "$COMMITMSG"

ECHO "Pushing the changes..."
git push -u origin $BRANCH

ECHO "CHECK GIT STATUS..."
git status