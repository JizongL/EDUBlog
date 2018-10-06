---
layout: post
title:  Github Review
date:   2018-09-25 23:24
categories: Github
tags: review Github
---


### Navigating The Log

`git log`

to scroll down, press

`j` or `↓` down line/time
`d` down half a page screen
`f` down whole page screen

to scroll up, press










`k` or `↑` up line/time
`u` up half the page screen
`b` up whole page screen

`q` to quit

flags to remember

`git log --oneline`



`git log --stat`

`git log p`


Annotated git log -p Output


🔵 - file being displayed
🔶 - the hash of first and second version of file. can be ignored.
❤️ - the old version and current version of the file
🔍 - the lines where the file is added and how many lines there are
✏️ - the actual changes made in the commit

`+` current, `-` old version



`fn` + `shift` + `leftArrow` = goto beginning of line
`fn` + `shift` + `rightArrow` = goto end of line

go to a specific SHA
`git log -p fdf5493`


**unstaging**

`git add .`
`git rm --cached`



[How to get out of VIM editor](https://stackoverflow.com/questions/11828270/how-to-exit-the-vim-editor)


[udacity commit style guide](https://udacity.github.io/git-styleguide/)

**see unstaged difference**
`git diff`

` git log -p` uses `git diff` under the hood


#### Git Ignore

`.gitignore`

If you want to keep a file in your project's directory structure but make sure it isn't accidentally committed to the project, you can use the specially named file, .gitignore (note the dot at the front, it's important!). Add this file to your project in the same directory that the hidden .git directory is located. All you have to do is list the names of files that you want Git to ignore (not track) and it will ignore them.


#### Globbing Crash Course
[Glob](https://en.wikipedia.org/wiki/Glob_(programming))

blank lines can be used for spacing
`#` - marks line as a comment
`*` - matches 0 or more characters
`?` - matches 1 character
`[abc]` - matches a, b, or c
`**` - matches nested directories - `a/**/z` matches
a/z
a/b/z
a/b/c/z
So if all of the 50 images are JPEG images in the "samples" folder, we could add the following line to .gitignore to have Git ignore all 50 images.

`samples/*.jpg`


### Tagging, Branching and Merging

`git tag`

`git tag -a v1.0`
the `-a` flag (to create an annotated flag. (git tag v1.0) lightweight tag.)

Annotated tags are recommended because they include a lot of extra information such as:

the person who made the tag
the date the tag was made
a message for the tag
Because of this, you should always use annotated tags.

```
commit 6fa5f34790808d9f4dccd0fa8fdbc40760102d6e (HEAD -> master, tag: v1.0)
```

deleting a tag
`git tag -d v1.0`


Adding A Tag To A Past Commit

`git tag -a v1.0 a87984`

### Making a branch
`git branch`
It can be used to:

list all branch names in the repository

create new branches
`git branch sidebar`
delete branches

switch to a specific branch
`git chekcout branchname`

Just like we need `--decorate `flag to display Git tags, we need it to display branches.
`git log --oneline --decorate`

### delete a branch
`git branch -d sidebar`
One thing to note is that you can't delete a branch that you're currently on. So to delete the sidebar branch, you'd have to switch to either the master branch or create and switch to a new branch.

Git won't let you delete a branch if it has commits on it that aren't on any other branch (meaning the commits are unique to the branch that's about to be deleted).

force deletion, you need to use a capital D flag
`- git branch -D sidebar`.

use `git checkout` to create new branch
`git checkout -b footer master`

#### See all branches at once

`git log --oneline --decorate --graph --all`

The `--graph` flag adds the bullets and lines to the leftmost part of the output. This shows the actual branching that's happening. The `--all` flag is what displays all of the branches in the repository.


#### Merge

undo a merge
`git reset --hard HEAD^`

 Fast-forward merge

 When a merge is performed and fails, that is called a merge conflict

before merging, build a habit to always return to the `master` branch before doing so.

`git status` is useful when dealing with merge conflict.


```terminal
$ git status
On branch master
Your branch is ahead of 'origin/master' by 9 commits.
  (use "git push" to publish your local commits)
You have unmerged paths.
  (fix conflicts and run "git commit")
  (use "git merge --abort" to abort the merge)

Unmerged paths:
  (use "git add <file>..." to mark resolution)

```



Merge Conflict Indicators Explanation
The editor has the following merge conflict indicators:

`<<<<<<<` HEAD everything below this line (until the next indicator) shows you what's on the current branch
`|||||||` merged common ancestors everything below this line (until the next indicator) shows you what the original lines were
`=======` is the end of the original lines, everything that follows (until the next indicator) is what's on the branch that's being merged in
`>>>>>>>` heading-update is the ending indicator of what's on the branch that's being merged in (in this case, the heading-update branch)


Be careful that a file might have merge conflicts in multiple parts of the file, so make sure you check the entire file for merge conflict indicators - a quick search for `<<<` should help you locate all of them.


### Undoing changes
`git revert`
`git reset`


**If changing the last commit, just run**

`git commit --amend`

**Add forgotten files to commits.**


`git commit --amend`
edit the file(s)
save the file(s)
stage the file(s)
and run `git commit --amend`

`git commit --amend -m "an updated commit message"`

**reverting a commit**

`git revert db7e87a`


Git does keep track of everything for about 30 days before it completely erases anything.
To access this content, you'll need to use the `git reflog` command.



need to look up git rebase
[bitbucket articles 1](https://www.atlassian.com/git/tutorials/rewriting-history/git-rebase)
[bitbucket articles 2](https://www.atlassian.com/git/tutorials/rewriting-history)
