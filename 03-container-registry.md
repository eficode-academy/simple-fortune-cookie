## Shipping out!

Building an image and Running a container works great!
    But.. it scales poorly. Imagine having a plethora of servers?
    You'd have to build it everywhere,
    which is a fun full-time job, if you think repetitive work is fun!
    But alas, that's not what you were hired to do.

Luckily you've heard about DockerHub,
    and your application is open source or "public" anyways,
    so there's no harm in storing it in a public repo.

> Note: you are also able to use the Github Container Registry if you find that simpler.

### Task

- Augment your Workflow so it's pushing to DockerHub or Github Container Registry.
    - It probably needs some credentials for this.
- Your deploy step probably just runs the image,
    which means it uses the one that's available locally.
    Change this so it explicitly pulls your newly built image first.
