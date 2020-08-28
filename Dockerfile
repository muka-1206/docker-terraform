FROM alpine

ARG terraform_version="0.13.1"

# Install terraform
RUN apk update --no-cache \
    && apk add --no-cache \
        wget \
        unzip \
        curl \
    && wget https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip \
    && unzip ./terraform_${terraform_version}_linux_amd64.zip -d /usr/local/bin/ \
    && rm -rf ./terraform_${terraform_version}_linux_amd64.zip

ENTRYPOINT /bin/sh