FROM ghcr.io/xu-cheng/texlive-full:latest

RUN \
  apk update && \
  apk --no-cache add \
  font-noto \
  font-noto-cjk \
  font-noto-cjk-extra

COPY \
  LICENSE \
  README.md \
  entrypoint.sh \
  /root/

ENTRYPOINT ["/root/entrypoint.sh"]
