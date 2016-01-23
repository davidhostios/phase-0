
#How does tracking and adding changes make developers' lives easier?

Tracking helps us keep up with each change made to a file and gives us an idea about what was done to a file.
Adding a change to a file stages a file to be committed.

#What is a commit?

A commit is like a save. The metaphor that rang most true with me was like a video game save (ie you can keep multiple versions).

#What are the best practices for commit messages?

Keep them under 50 characters and keep them in the present, imperative tense.

ex - "Makes the commit message present and short"

#What does the HEAD^ argument mean?

This refers to the last commit previous to the one currently being worked on. You use HEAD to either unstage added files or revert to a previous commit. HEAD~3, HEAD~4, and HEAD~5 follow after HEAD^. The commands to use are:

to unstage added, use

git reset HEAD name-of-file

to revert to previous commits, use

git reset --soft HEAD^

#What are the 3 stages of a git change and how do you move a file from one stage to the other? 

Track, add, and commit. Look at me practicing present tense...Track means that a file has been modified and these changes have been noted. 

Add means it has been staged to be committed. 

To commit a file means to basically update the file online with the changes. Github will remember each version of the committed code, thus it is referred to as a version control system

#Write a handy cheatsheet of the commands you need to commit your changes? 

No thank you. Just kidding I know it was supposed to be a statement.

-First, create or fork the master repo on Github. Then, from the command line, clone to your git with the command

git clone "here you paste the url copied from your Github"

-Create a new branch so that the original will be unharmed if something goes terribly wrong, using

git checkout -b "name-of-new-branch"

-As you modify files, add your changes to be committed by using 

git add "name-of-file"

-Track changes and keep an eye on the status of each file using

git log

git status

-To commit changes using

git commit -m "make commit message imperative tense"

#What is a pull request and how do you create and merge one?

A pull request is a method of asking to having your code reviewed and considered for implementation. You make a pull request to submit your code for review.

You can make a pull request on the repository page on Github and then implement on the terminal line by navigating to the master branch and using

git pull origin master

Then, navigate back to your branch and use the following to merge

git merge master

#Why are pull requests preferred when working with teams? 

So that the people working on the project can 'ok' the work that is done to the project.