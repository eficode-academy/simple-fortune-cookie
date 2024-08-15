## Testing the waters

Automation isn't just good.
If you automate something bad,
well.. then you'll get a lot of it.

But testing is generally considered a good practice,
and running them by hand isn't just tedious,
it's also something that's easy to forget,
because it's tedious.

So of course you look into some sort of automated tests.

Luckily the project was not created by entities of pure evil.
There are some tests that can be run.
You need to automate them.

You can run the current set of tests with `go test` in the `frontend` folder (there is no test file in the `backend` folder as of yet).

Also if you get a `FAIL`, simply change the recommended line in `frontend/main.go`.

Continuous Integration is the goal,
and you look to your good old friend GitHub Actions for some needed support.

### Task

- Setup a Continuous Integration pipeline (a GitHub Action Workflow)
- Build your application
- Run the tests in the Workflow
- Make sure you maintain mainline integrity meaning all PRs
    against `main` needs to be tested by CI before merging.

> Hint: The [GitHub Flow](https://help.github.com/en/articles/github-flow)
> has an interesting reference to "Status Checks."

- (Optional) Pristine `main`-branch. Looking at Status Checks passing
    is all fine and dandy, but it doesn't _enforce_ integrity
    if you can still push directly to `main`.
    Maybe you should look into some kind of "branch protection rule,"
    for it.
