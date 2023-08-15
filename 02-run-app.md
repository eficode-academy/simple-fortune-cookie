## Bat out of hell

Not completely without luck, you find that the previous developers have actually
    created README's for their code!

Try that and see how that flies for you.

### Task

- Install go on your cloud instance 
- Build with `go build` in each seperater folder
- Binaries called `backend` and `frontend` will be created
- Run both the frontend and backend with `go run frontend` and `go run backend` in the respective folder.
- Familiarize yourself with the application (frontend and backend, try to add a cookie and re-run the backend)

### Installing go

If your instance do not have go installed, you can install it with the following commands:

```bash 
GO_VERSION="1.21.0"
wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
source $HOME/.profile
```