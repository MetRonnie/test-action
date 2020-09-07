cd "$GITHUB_WORKSPACE"
backup_sha=$( git rev-parse "origin/${HEAD_REF}" )
git push -d origin "$HEAD_REF"
echo "::warning:: Deleted the newly-pushed branch '${HEAD_REF}' because the workflow failed"
echo "If you need to recover the branch:"
echo "  git fetch origin ${backup_sha}"
echo "  git checkout -b ${HEAD_REF} ${backup_sha}"
