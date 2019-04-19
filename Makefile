TAG=foobar

make-secret:
	echo "mysecretcontents" > file_containing_secrets.txt

build-without-buildkit : make-secret
	docker build --no-cache -f Dockerfile -t ${TAG} .

build-with-buildkit : make-secret
	DOCKER_BUILDKIT=1 docker build --no-cache --secret id=mycoolsecret,src=file_containing_secrets.txt --progress=plain -f Dockerfile-buildkit -t ${TAG}-buildkit .
