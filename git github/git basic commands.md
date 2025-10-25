what is git repo?
A git repo is a workspace which tracks and manages fileswithin a folder.

git init
use git init to create a new git repository. Before we can do anything git-related, we must initialize a repo first.

This is something we do once per project.Initialize the repo in the top level folder containing your project. 

git status
git status gives information on the current status of a git repository and its content

Warning!!
Do not init a repo inside a repo
Before running git init, use git status to verify that you are not currently inside of a repo.

There are three locations, code goes through
1) Working Directory (In this phase git know the changes but it doesn't track those untill we use the command git add <file1> - Untracked phase). from here to staging we can pass single single file.

2) Staging Area - 
3) Repository

git add <file1> <file2> // we can move a single or multiple files in a single line by using space between the file names
git add . //using . we can move all the files to staging.

git commit
we use git commit to actually commit changes from the staging area.
when maing a commi, we need to provide a commit message that summarizes the changes and work snapshotted in the commit.

git commit -m <message>
-m flag allows us to pass in an inine comit message, rather than launching a text editor



