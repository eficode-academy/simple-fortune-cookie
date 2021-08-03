## A means to an end

> FIXME: TASK

You realise that your process is actually quite mature now, but you don't exactly feel you're quite done.

Even though you are testing the internal quality of your code - you do not have any means of functional testing.

You just want the bare minimum test. So you add a test in your pipeline that will deploy your Dockerized application temporarily and test its availability.

Even a very simple thing as being able to reach your server with `curl` or `wget` would be much better than what you have now. Nothing.

### Task

- Use your automated deploy to deploy in testing
- Do functional testing (You know your servers IP)
- Display result in Jenkins
- This might not be a tollgate criteria, but it is important information for you to gain.
