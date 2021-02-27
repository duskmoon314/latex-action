FROM ghcr.io/xu-cheng/texlive-full:latest

RUN \
  apk update && \
  apk --no-cache add \
  font-noto

COPY \
  LICENSE \
  README.md \
  entrypoint.sh \
  /root/

ENTRYPOINT ["/root/entrypoint.sh"]
