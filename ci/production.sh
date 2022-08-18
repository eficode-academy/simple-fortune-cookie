docker run -d ghcr.io/stefanowich33/simple-fortune-cookie/cookie-backend:$0
docker run -d ghcr.io/stefanowich33/simple-fortune-cookie/cookie-frontend:$0 --env BACKEND_DNS=backend