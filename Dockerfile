FROM alpine

LABEL "name"="SUSE OBS API Fetch"
LABEL "description"="GitHub Action to get SUSE OBS API responses and save them to repository."
LABEL "maintainer"="v77 Development <mail@v77.dev>"
LABEL "repository"="https://github.com/ghastore/api-obs"
LABEL "homepage"="https://github.com/ghastore"

COPY *.sh /
RUN apk add --no-cache bash curl git git-lfs jq yq

ENTRYPOINT ["/entrypoint.sh"]
