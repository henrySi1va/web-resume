# Start from Node.js.
FROM node:24

# Install dependencies for act to run github action locally.
RUN apt-get update && apt-get install -y \
  curl \
  unzip \
  git \
  docker.io \
  && rm -rf /var/lib/apt/lists/*

# Install act.
RUN curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash

# Set working directory.
WORKDIR /workspace

# Expose port to allow connection to dev instance.
EXPOSE 3000

# Default shell.
CMD [ "bash" ]

