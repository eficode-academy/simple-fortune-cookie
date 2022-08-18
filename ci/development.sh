docker kill development-backend development-frontend
docker run -d --name development-backend ghcr.io/stefanowich33/simple-fortune-cookie/cookie-backend:trunk --pull=always
docker run -d --name development-frontend ghcr.io/stefanowich33/simple-fortune-cookie/cookie-frontend:trunk --pull=always