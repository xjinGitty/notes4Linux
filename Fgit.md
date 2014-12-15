>1. git diff: means the differ exist in the modified area (modified compared with the unmodified <what has been modified>)
>2. git diff --cache: mean the differ exist in the stage area (staged compared with the commited <what has been staged and will be commited>)
>
>extra:
>git rm: first git rm and then git commit (remove from git and the working dir)
>git rm -f: if file is modified and has been staged, (but not commited)
>git rm --cache: just remove from the git and will keep in the working dir
>
>undoing things:
>3. modify a commit: git commit --amend ... (this command commit the staged area )
>4. git reset HEAD file : to unstage the staged file; and also could do undo all the works in the local directory if with --hard para
>5. git checkout to unmodify a modified files
>(BTW all of this info could be found under the action's notes)
>
>
>work with remote repos:
>6. pull and fetch will just get everything from the remote to the current branch
>7. push: need specify the branch in local that would like to be pushed to the remote repo
>
>git commit work flow:
>-git stage to checksum each file, add all the checksums added to the staging area
>-when run git commit: git checksum each subdirector and store those tree object in the git repo, then create commit object has the metadata and a pointer to the root project. Then when needed, the snapshot could be re-created
>-git commit include author email message the staged area checksum and the previous commit info
>-git repo will inlcude blob(files checksum), blob tree (directory checksum) and the commit that with the pointer to th root director
>
>git branch:
>HEAD will indicate which branch is used current
>
