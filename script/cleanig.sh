REMOTE_NAME=origin
EXPIRY_DATE=$(date +"%Y-%m-%d" -d "-1 week")

git fetch $REMOTE_NAME --prune
git for-each-ref --format='%(committerdate:short) %(refname:lstrip=3) %(refname:short)' --sort -committerdate refs/remotes/$REMOTE_NAME | while read date branch remote_branch; do
    # protected branch
    if [[ $branch =~ ^master$|^HEAD$|^test$ ]]; then
        printf "%9s | %s | %50s | %s\n" "PROTECTED" $date $branch $remote_branch
    elif [[ "$date" < "$EXPIRY_DATE" ]]; then
        printf "%9s | %s | %50s | %s\n" "DELETE" $date $branch $remote_branch
       # git push $REMOTE_NAME --delete $branch
    fi
done
