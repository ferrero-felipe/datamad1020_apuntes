alias py3=python3
# Only works on current session

echo "alias py3=python3" >> .zshrc
# Export to profile file

cp lorem/* lorem-copy
# Copies all content of lorem to lorem-copy

cp lorem/{at,lorem,sed}.txt lorem-copy
# Copies three files at, lorem, sed from lorem to lorem-copy

find -type f -name "lorem*" | wc -l 
# Count files starting with lorem

sed 's/et/et\n/g' lorem/lorem.txt | grep et | wc -l
# Change et into et\n, look for et and count lines

grep -o et lorem/lorem.txt |  wc -l
# Look for only the matching et and count lines