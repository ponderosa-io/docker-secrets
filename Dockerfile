FROM alpine:edge
ADD secret /tmp/secret
RUN cat /tmp/secret
RUN echo "pre-deletion /tmp listing:" && ls /tmp
RUN rm /tmp/secret
RUN echo "post-deletion /tmp listing:" && ls /tmp
