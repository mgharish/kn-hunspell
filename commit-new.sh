export HUNSPELL_PATH="/usr/share/hunspell"

git pull origin master
sort -u $HUNSPELL_PATH/kn.dic | grep -v "^\s*$" > kn.dic
sed "s#Released on.*\$#Released on `date`#"  $HUNSPELL_PATH/kn.aff > kn.aff
git commit kn.aff kn.dic
git push origin master
