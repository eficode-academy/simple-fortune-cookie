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
You can run the current set of tests with `go test`.

Continuous Integration is the goal,
and you look to your good old friend GitHub Actions for some needed support.

### Task

- Setup a Continuous Integration pipeline
- Run the tests in the pipeline