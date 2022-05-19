## A means to an end

Automated funtional testing, probably not the first place to start.

Even if you can deploy to different environments,
    you might still feel like somethings missing..

You just want the bare minimum test.
    So you add a test in your pipeline that will deploy your
    Dockerized application temporarily and test its availability.

Even a very simple thing as being able to reach your server
    with `curl` or `wget` would be much better than what you have now; nothing.

### Task

- Create a script that can test your running application.
- Use your automated deploy to deploy a test-version
    and run your script againt it.
- Consider if the test you've chosen should be a tollgate criteria,
    it might just be important information for you to gain.
