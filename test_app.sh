set -e

URL=${1:-http://localhost:8080} 

echo "🚀 Waiting for service to be up at $URL..."
for i in {1..15}; do
  if curl -s --head "$URL" | grep "200 OK" > /dev/null; then
    echo "✅ Service is reachable!"
    exit 0
  fi
  echo "⏳ Attempt $i: Service not ready yet..."
  sleep 2
done

echo "❌ Service did not respond in time"
exit 1
