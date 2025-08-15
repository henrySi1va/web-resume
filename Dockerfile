# Start from Node.js.
FROM node:24

# Install dependencies including nvim.
RUN apt-get update && apt-get install -y \
  curl \
  unzip \
  git \
  docker.io \
  neovim \
  && rm -rf /var/lib/apt/lists/*

# Install act.
RUN curl https://raw.githubusercontent.com/nektos/act/master/install.sh | bash

# Set working directory.
WORKDIR /workspace

# Expose port to allow connection to dev instance.
EXPOSE 3000

# Trust git repo in workspace directory.
RUN git config --global --add safe.directory '/workspace'

# Default shell.
CMD [ "bash" ]

