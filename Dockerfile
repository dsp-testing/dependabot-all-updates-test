FROM ubuntu:18.04
FROM python:3.6.3

### SYSTEM DEPENDENCIES

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
      build-essential \
      dirmngr \
      git \


### RUBY

# Install Ruby 2.4
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C3173AA6 \
    && echo "deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu zesty main" > /etc/apt/sources.list.d/brightbox.list \
    && apt-get update
RUN apt-get install -y ruby2.4 ruby2.4-dev
