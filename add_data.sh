DRUG=$(python assign_drug.py $2)
DEST=$S3/$1/$1-$DRUG.dat
mkdir -p $S3/$1
cp $2 $DEST
git add $DEST
MSG="Add file $DEST"
git commit -m "'$MSG'"
echo "New file added to the repo: $DEST"
