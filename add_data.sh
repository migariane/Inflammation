DRUG=$(python assign_drug.py $2)
DEST=data/$1/$1-$DRUG.dat
mkdir -p data/$1
cp $2 $DEST
git add $DEST
MSG="Add file $DEST"
git commit -m "'$MSG'"
echo "New file added to the repo: $DEST"
