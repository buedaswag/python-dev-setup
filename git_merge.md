# Manually Handling Git Merges

## Overview
This document outlines how to manually handle Git merges so that you have full control over which changes get committed. We'll utilize \`git merge\` with the \`--no-commit\` and \`--no-ff\` options, followed by a \`git reset\` to unstage all changes. This process allows you to manually review and stage each change.

## Detailed Steps

### Step 1: Checkout and Update Branches
\`\`\`bash
git checkout main
git pull origin main
git checkout ABS-312
git pull origin ABS-312
\`\`\`

### Step 2: Perform the Merge Without Committing
\`\`\`bash
git merge main --no-commit --no-ff
\`\`\`
- Git fetches all the changes from \`main\` that are not in \`ABS-312\`.
- Non-conflicting changes get staged, ready for commit.
- Conflicting changes get marked as conflicts in the working directory files and are not staged.

### Step 3: Unstage All Changes
\`\`\`bash
git reset
\`\`\`
- This command will unstage all staged changes, moving them to the working directory.
- The working directory now contains all the changes fetched from \`main\`, both conflicting and non-conflicting, and none of them are staged.

### Step 4: Manual Review
- At this point, you can go through each file in your working directory. Changes from \`main\` will be present but not staged.
- Use \`git add <file>\` to stage each change after you've manually reviewed it.
- For conflicts, resolve them in your text editor, save the file, and then stage it.

### Step 5: Commit the Changes
\`\`\`bash
git commit -m "Manually merged changes from main into ABS-312"
\`\`\`

### Step 6: Push the Changes to Remote
\`\`\`bash
git push origin ABS-312
\`\`\`

## Summary
This approach gives you the control you're looking for: Git identifies what changes would be part of the merge, but you decide how to finalize that merge.
\`\`\`
