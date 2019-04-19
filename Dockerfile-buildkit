# syntax = docker/dockerfile:1.0-experimental

FROM alpine:edge
# Secret echoed out for demonstration; don't do this with actually sensitive values
RUN --mount=type=secret,id=mycoolsecret,dst=/tmp/file_containing_secrets.txt cat /tmp/file_containing_secrets.txt
RUN cat /tmp/file_containing_secrets.txt
