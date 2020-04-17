set -eux

echo "$2" | docker login -u "$1" --password-stdin

docker images

docker tag jchorl/go-build:latest-arm jchorl/go-build:latest || true
docker tag jchorl/go-build:latest-amd64 jchorl/go-build:latest || true
docker push jchorl/go-build:latest
