FROM node:20-bullseye

# Install basic development tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    zip \
    unzip \
    procps \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Set up a non-root user with sudo access
ARG USERNAME=node
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user
RUN groupmod --gid $USER_GID $USERNAME \
    && usermod --uid $USER_UID --gid $USER_GID $USERNAME \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Install global npm packages
RUN npm install -g pnpm@latest npm@latest nuxi@latest

# Set the default shell to bash rather than sh
ENV SHELL /bin/bash

# Set up Node.js environment
ENV NODE_ENV=development