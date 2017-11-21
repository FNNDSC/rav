FROM node:7
MAINTAINER fnndsc "dev@babymri.org"

# Install polymer cli
RUN npm install -g polymer-cli serve

# FNNDSC user
RUN useradd --user-group --create-home --shell /bin/false fnndsc
ENV HOME=/home/fnndsc

# COPY build and data
COPY build/es5-bundled/ $HOME/
RUN chown -R fnndsc:fnndsc $HOME/*

USER fnndsc
WORKDIR $HOME/

# Start dev server
EXPOSE 8081
CMD ["polymer", "serve", "--hostname", "0.0.0.0", "."]