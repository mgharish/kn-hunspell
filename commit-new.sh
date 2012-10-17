export HUNSPELL_PATH="/usr/share/hunspell"

git pull origin master
sort -u $HUNSPELL_PATH/kn.dic | grep -v "^\s*$" > dictionaries/kn.dic
sed "s#Released on.*\$#Released on `date`#"  $HUNSPELL_PATH/kn.aff > dictionaries/kn.aff
git commit *
git push origin master
