FROM ubuntu:focal

LABEL maintainer "VCityTeam"
LABEL source.repo "https://github.com/VCityTeam/UD-AugmentedModel-IMU-docker"

# Install system dependencies
RUN apt-get update

# Node version 18 is required. For its installation (on focal) refer to e.g.
#  https://computingforgeeks.com/install-node-js-14-on-ubuntu-debian-linux/
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs
RUN node --version
RUN npm --version
RUN apt-get install -y git
RUN git --version

######### Install UD-AugmentedModel-IMU
RUN git clone https://github.com/VCityTeam/UD-AugmentedModel-IMU.git
WORKDIR UD-AugmentedModel-IMU
RUN npm install

EXPOSE 8000
CMD [ "npm", "run", "start" ]
