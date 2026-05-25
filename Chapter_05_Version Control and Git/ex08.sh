git init recipe
cd recipe
echo "1 cup sugar" > recipe.txt
git add . && git commit -m "initial"
git branch salty && git branch sweet
git checkout salty
echo "1 cup salt" > recipe.txt
git add . && git commit -m "salty"
git checkout sweet
echo "2 cups sugar" > recipe.txt
git add . && git commit -m "sweet"
git checkout master
git merge salty
git merge sweet