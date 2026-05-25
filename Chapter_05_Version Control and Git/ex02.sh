

git clone https://github.com/missing-semester/missing-semester
cd missing-semester

git log --all --graph --oneline
git log --follow -1 README.md
git blame _config.yml | grep "collections:"