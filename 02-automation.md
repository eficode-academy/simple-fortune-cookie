## Testing the waters

> FIXME: REWRITE TO GH ACTIONS, AND THE OBVIOUS REFERENCE TO DOCKER

The ability to run your project in Docker has made many things easier for you.
You even have the ability to track code changes and manage your self-organizing team.
Things are looking up for you.

You keep stepping a bit on each others toes, so of course you look into some sort of automated tests.
Luckily the project was not created by entities of pure evil. There are some tests that can be run. You need to automate them. You can run the current set of tests with `python tests.py`.

Continuous Integration is the goal, and you look to your good old friend Jenkins for some needed support.

### Task

- Setup a Jenkins project
- Setup a Continuous Integration pipeline (the config Jenkins is running)
- Run the tests in the pipeline
- Make sure you maintain mainline integrity meaning all commits to master needs to be tested by CI before merging.

> Hint: A good starting point could be [GitHub Flow](https://help.github.com/en/articles/github-flow)
