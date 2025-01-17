FROM public.ecr.aws/q9e5a6f4/public-images:alpine_3.15.0

RUN apk update && \
    apk --no-cache add curl jq coreutils

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
