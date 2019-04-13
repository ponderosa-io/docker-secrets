TAG=foobar

make-secret:
	echo "mysecretcontents" > secret

build : make-secret
	docker build --no-cache -t ${TAG} .

build-with-buildkit : make-secret
	DOCKER_BUILDKIT=1 docker build --secret id=mycoolsecret,src=secret --progress=plain --no-cache -f Dockerfile-buildkit -t ${TAG}-buildkit .
