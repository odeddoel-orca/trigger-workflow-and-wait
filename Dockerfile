FROM 517741201361.dkr.ecr.us-east-1.amazonaws.com/workflow-runners:alpine_3.15.0

RUN apk update && \
    apk --no-cache add curl jq coreutils

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
