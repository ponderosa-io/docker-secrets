FROM alpine:edge
ADD file_containing_secrets.txt /tmp/file_containing_secrets.txt
RUN cat /tmp/file_containing_secrets.txt
RUN echo "pre-deletion /tmp listing:" && ls /tmp
RUN rm /tmp/file_containing_secrets.txt
RUN echo "post-deletion /tmp listing:" && ls /tmp