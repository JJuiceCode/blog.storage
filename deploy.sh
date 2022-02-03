# Build the project.
hugo -t bookworm
# Go To Public folder
cd public
# Add changes to git.
git add .
# Commit changes.
msg="포스트업로드-HTML 텍스트 줄바꿈을 단어 기준으로 정하게 만들어 주는 CSS 속성_`date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
# Push source and build repos.
git push origin master
# Come Back up to the Project Root
cd ..
# blog 저장소 Commit & Push
msg="포스트업로드-HTML 텍스트 줄바꿈을 단어 기준으로 정하게 만들어 주는 CSS 속성_`date`"
git add .
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
git push origin master