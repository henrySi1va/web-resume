# Start from Node.js.
FROM node:24

# Install dependencies for act to run github action locally.
RUN apt-get update && apt-get install -y \
  curl \
  unzip \
  git \
  docker.io \
  && rm-rf /var/lib/apt/lists/*

# Install act.
RUN curl -s https://api.github.com/repos/nektos/act/releases/latest \
  | grep "browser_download_url.*Linux_x86_64.tar.gz" \
  | cut -d '"' -f 4 \
  | wget -qi - \
  && tar -xf act_*_Linux_x86_64.tar.gz \
  && mv act /usr/local/bin/ \
  && rm act_*_Linux_x86_64.tar.gz

# Set working directory
WORKDIR /workspace

# Expose port to allow connection to dev instance.
EXPOSE 3000

# Default shell
CMD [ "bash" ]

