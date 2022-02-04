# Build the project.
hugo -t bookworm
# Go To Public folder
cd public
# Add changes to git.
git add .
# Commit changes.
msg="리스트 페이지 & 상세페이지 레이아웃 및 css 수장`date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
# Push source and build repos.
git push origin master
# Come Back up to the Project Root
cd ..
# blog 저장소 Commit & Push
msg="리스트 페이지 & 상세페이지 레이아웃 및 css 수장`date`"
git add .
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
git push origin master