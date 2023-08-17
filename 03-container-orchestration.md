## A tight ship

You might have heard a thing or two about Kubernetes,
    but fret not, your manager _definitely_ has,
    and confident it will solve all of our problems, _we need it._

It's probably time anyways,
    managing the lifecycle by hand,
    of that fleet of containers you're currently running,
    was getting quite tedious.

### Task

- Create Kubernetes manifests for your applications
- Try to deploy it manually to your cluster

> Hint: notice that the Kubernetes workers haven't had any of your images
> built on them, so they can't start the containers,
> unless they can downloading them from _somewhere._

> NB: Depending on the way your cluster is configured,
> you might have a bit of trouble strictly deploying different versions
> to e.g. different namespaces.
>
> But you could create different manifests that just name the resources,
> according to "their version." That's fine for now,
> after all, the goal is clearly to get into Kubernetes!
