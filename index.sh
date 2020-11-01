set -euo pipefail

rm README.md

for file in *.md
do
    name=$(echo $file | sed 's/.md//' | sed 's/-/ /')
    echo '* ['$name']('$file')' >> README.md
done
git add README.md
