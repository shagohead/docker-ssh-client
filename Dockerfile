FROM alpine:latest

COPY entrypoint.sh /opt/bin/
RUN chmod +x /opt/bin/entrypoint.sh
RUN apk add --update openssh-client
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh

ENTRYPOINT ["/opt/bin/entrypoint.sh"]
CMD ["/bin/sh"]
