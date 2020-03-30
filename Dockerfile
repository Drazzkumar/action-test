FROM node:12-alpine

LABEL maintainer="razzkumar <razzkumar.dev@gmail.com>"
LABEL version="0.1.0"
LABEL repository="https://github.com/razzkumar/PR-Automation"

LABEL "com.github.actions.name"="Learning github action"
LABEL "com.github.actions.description"="This simply show the my profile url"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

#COPY ./make-env.sh .
COPY ./entrypoint.sh /
# Command to run when starting the container
CMD ["/entrypoint.sh"]
