# Simple Fortune Cookie Backend

use `go build` to build code and `go run <app>` afterwards

If redis is not running, you will get a `connection refused` error, don't worry about it 😉 

You will be setting up the database connection later during the challenge, so just continue for now.

> note for next dev on this project: remember that `redigo` should be in version `v1.8.5` , that worked on my laptop at the time of writing this. Go can be in version 1.18 up to at least 1.21. 

## Environment Variables

`REDIS_DNS` - DNS name of the redis server
