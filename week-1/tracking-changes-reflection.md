How does tracking and adding changes make developer's lives easier?
  It makes it easier so if the developer makes a mistake, the developer is able to easily go back and review previous builds and changes.
What is a commit?
  Commits are save points in projects, allowing developers to check commit history and see multiple changes
What are the best practices for commit messages?
  Best practice is to including a one line short description, then including a more meaningful commit message in the body using imperative present tense, and including motivation for the change.
what does the HEAD^ argument mean?
  HEAD^ is the last commit argument.
What are the 3 stages of a git change and how do you move a file from one stage to the other
  First step is making changes or modifying the files in your working directory, not in the master branch. Second is to add the file for the file to be ready for being committed. Finally you want to commit the file.
Write a handy cheatsheet of the commands you need to commit your changes?
  git co - b branch-name (to create your working branch)
  git add (to add the modifyed file)
  git commit -m "message" (committing the file with message)
  git push origin branch-name (push changes changes to repo)
What is a pull request and how do you create and merge one?
  A pull request is obtaining the changes live into GitHub, by making a new pull request and comparing the master to the feature-branch (making-changes) and create pull request. If branch is up-to-date you can then merge pull request on GitHib.
Why are pull requests preferred when working with teams?
  Pull requests are preferred when working with teams so multiple individuals can work on the same project, and pull the request into the same branch. Showing commit changes between each developer.