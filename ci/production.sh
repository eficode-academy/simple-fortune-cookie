docker kill production-backend production-frontend
docker run -d --name production-backend ghcr.io/stefanowich33/simple-fortune-cookie/cookie-backend:$0
docker run -d --name production-frontend ghcr.io/stefanowich33/simple-fortune-cookie/cookie-frontend:$0 --env BACKEND_DNS=backend