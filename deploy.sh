# Build the project.
hugo -t bookworm
# Go To Public folder
cd public
# Add changes to git.
git add .
# Commit changes.
msg="post-header와 title겹쳐보이는 부분 수정 `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
# Push source and build repos.
git push origin master
# Come Back up to the Project Root
cd ..
# blog 저장소 Commit & Push
git add .
msg="post-header와 title겹쳐보이는 부분 수정 `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
git push origin master