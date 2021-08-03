## Now we have time for the cool stuff

> FIXME: split into more tasks

You've reached a very mature point for your software development.
You have a containerized, automatically testable and deployable application.

You know who is working on what and why. You have full faith that you can refactor your legacy project without destroying anything.

As you dare to change the code, it is no longer legacy, it is _just your software_.

Now it is time to tread new paths.

### Task

The following are suggestions to explorations that you can take.

- Run a linter as part of the pipeline
- Stress the application, using for instance the docker image `rufus/siege-engine` (more info about using the application can be found [here](https://www.linode.com/docs/tools-reference/tools/load-testing-with-siege/))
- Refactor to remove the unused User and login code from the application
- Add another machine as a build node, and make it run some of the steps in the pipeline.
- Deploy to production if functional tests pass
- Add something to do your buildtasks for you. Gradle, Rake, Grunt, Make, etc.
- Allow rollbacks to a previous version
- Setup an ELK-stack for monitoring
- Use for instance HAProxy to have multiple containers running in production, through a single interface
- Use persistent storage for your SQLite database
- Setup a database in a separate Docker container, change application to use it
- Investigate the usage of docker-compose for your multi-container setup
- Investitage the usage of Kubernetes for your multi-container setup
- Do some TDD on the application
  - Make sure that you can't do an empty post
  - Make links in a post clickable
  - Make the layout prettier
  - Add additional pages
  - Add fields to the post
