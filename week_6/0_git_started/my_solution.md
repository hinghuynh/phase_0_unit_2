## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
You run git add on a file when you want to include whatever changes you've made to it in your next commit snapshot. Anything you've changed that is not added will not be included - this means you can craft your snapshots with a bit more precision than most other SCM systems.

#### branch
You use git branch to list your current branches, create new branches and delete unnecessary or already merged branches.

#### checkout
Git checkout switches you between your branches.

#### clone
You use git clone to get a local copy of a Git repository so you can look at it or start modifying it.

#### commit
You run git commit to record the snapshot of your staged content. This snapshot can then be compared, shared and reverted to if you need to.

#### fetch
Download new branches and data from a remote repository

#### log
You use git log to list out the commit history or list of changes people have made that have lead to the snapshot at the tip of the branch. This allows you to see how the project in that context got to the state that it is currently in.

#### merge
You use git merge to combine another branch context into your current branch. It automatically figures out how to best combine the different snapshots into a new snapshot with the unique work of both.

#### pull
Fetch from a remote repo and try to merge into the current branch

#### push
You run git push [alias] [branch] to update a remote repository with the changes you've made locally. It will take what your [branch] looks like and push it to be [branch] on the remote, if possible. If someone else has pushed since you last fetched and merged, the Git server will deny your push until you are up to date.

#### reset
You run git reset HEAD to undo the last commit, unstage files that you previously ran git add on and wish to not include in the next commit snapshot

#### rm
You run git rm to remove files from being tracked in Git. It will also remove them from your working directory.

#### status
You run git status to see if anything has been modified and/or staged since your last commit so you can decide if you want to commit a new snapshot and what will be recorded in it.

## Release 4: Git Workflow

- Push files to a remote repository
- Fetch changes
- Commit locally

## Release 5: Reflection
