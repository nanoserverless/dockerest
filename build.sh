docker build \
	-t nanoserverless/dockerest \
	-f Dockerfile.build \
	--build-arg http_proxy=$http_proxy \
	--build-arg https_proxy=$https_proxy \
	.
id=$(docker create nanoserverless/dockerest)
docker cp $id:/go/src/dockerest dockerest
docker rm -f $id
docker build \
  -t nanoserverless/dockerest:light \
  --build-arg http_proxy=$http_proxy \
  --build-arg https_proxy=$https_proxy \
  .
docker tag nanoserverless/dockerest nanoserverless/dockerest:dev
