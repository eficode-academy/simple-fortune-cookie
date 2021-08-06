## The Grand Finale

You've reached a very mature point for your software development,
you have a containerized, automatically testable and deployable application.

You know who is working on what and why. You have full faith that you can refactor your legacy project without destroying anything.

As you dare to change the code, it is no longer legacy, it is _just your software_.

Your manager greets you, _"absolute stellar work,
the previous developers were laughing
when I said they could be replaced by fresh-out-of-college'ees.
But look now. I was right, great work me!
And you give yourself some pats on the back, great job!..
well, okay, not that many.. we have work to do!"_

### Task

The following are suggestions to explorations that you can take.

- Run a linter as part of the pipeline
- Stress the application, using for instance the docker image `rufus/siege-engine`
  (more info about using the application can be found
  [here](https://www.linode.com/docs/tools-reference/tools/load-testing-with-siege/))
- Helm-ify your Kubernetes deployment,
  surely some of the duplicated manifests can use a bit of templating?
- Try scaling your application, and making sure that updates are done _rolling._
- Configure persistent storage for your database.
- Investigate rollbacks to a previous version.
- Deploy to "production" if functional tests pass
- There's a couple of unfortunate scenarios e.g.
    when the backend has found the database,
    but the database becomes unavailable.
    Investigate how to handle this gracefully.
- Add something to do your buildtasks for you. Gradle, Rake, Grunt, Make, etc.
- Test Driven Development:
  - Frontend crashes if the backend isn't running, this isn't very nice.
    Implement a solution that makes it "handle it."

### The extra: "I've Completely run out of Tasks"-Task

- Metrics.

Have you heard about prometheus or grafana?

- Try starting a prometheus and grafana, (Helm can help with this!)
  and enabling metrics on your kubernetes deployment.

Oh that's right, we don't have any metrics,
  so prometheus isn't scraping anything.

- Add the Prometheus client to our application,
  and add a metric.
