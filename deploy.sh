# Build the project.
hugo -t bookworm
# Go To Public folder
cd public
# Add changes to git.
git add .
# Commit changes.
msg="Post Upload - 'Tailwindcss Deep Dive.1-기본세팅' <`date`>"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
# Push source and build repos.
git push origin master
# Come Back up to the Project Root
cd ..
# blog 저장소 Commit & Push
msg="Post Upload - 'Tailwindcss Deep Dive.1-기본세팅' <`date`>"
git add .
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
git push origin master