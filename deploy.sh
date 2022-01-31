# Build the project.
hugo -t bookworm
# Go To Public folder
cd public
# Add changes to git.
git add .
# Commit changes.
msg="baseof partial header 수정.3 `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
# Push source and build repos.
git push origin master
# Come Back up to the Project Root
cd ..
# blog 저장소 Commit & Push
msg="baseof partial header 수정.3 `date`"
git add .
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
git push origin master