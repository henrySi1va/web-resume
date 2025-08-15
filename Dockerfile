# Start from Node.js.
FROM node:24

# Install dependencies.
RUN apt-get update && apt-get install -y \
  curl \
  unzip \
  git \
  docker.io \
  && rm -rf /var/lib/apt/lists/*

# Install act.
RUN curl https://raw.githubusercontent.com/nektos/act/master/install.sh | bash

# Install neovim.
RUN curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz \
  && tar xzf nvim-linux-x86_64.tar.gz \
  && rm nvim-linux-x86_64.tar.gz \
  && mv nvim-linux-x86_64 /opt/nvim \
  && ln -s /opt/nvim/bin/nvim /usr/local/bin/nvim

# Set working directory.
WORKDIR /workspace

# Expose port to allow connection to dev instance.
EXPOSE 3000

# Trust git repo in workspace directory.
RUN git config --global --add safe.directory '/workspace'

# Default shell.
CMD [ "bash" ]

