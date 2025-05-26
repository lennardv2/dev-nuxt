# Nuxt.js Development Container

This directory contains configuration files for setting up a development container for this Nuxt.js project.

## Features

- Node.js 20 (Bullseye)
- Git, curl, wget, and other essential tools
- Global npm packages: pnpm, npm, nuxi (latest versions)
- VS Code extensions for Vue.js/Nuxt.js development
- Port forwarding for Nuxt.js development server

## Usage with VS Code Dev Containers

### Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Opening the Project in a Container

1. Open the project in VS Code
2. Click on the green icon in the bottom-left corner of VS Code
3. Select "Reopen in Container" from the menu

VS Code will build the container and open the project inside it. This may take a few minutes the first time.

## Usage with Envbuilder

This devcontainer configuration is compatible with [coder/envbuilder](https://github.com/coder/envbuilder), which allows you to build development environments from a Dockerfile or devcontainer.json on Docker, Kubernetes, and OpenShift.

To use this devcontainer with envbuilder:

```bash
docker run -it --rm \
  -v /tmp/envbuilder:/workspaces \
  -e ENVBUILDER_GIT_URL=<your-git-repo-url> \
  -e ENVBUILDER_INIT_SCRIPT=bash \
  ghcr.io/coder/envbuilder
```

Replace `<your-git-repo-url>` with the URL of your Git repository.

## Development Workflow

Once the container is running:

- The Nuxt.js development server will be accessible at http://localhost:3000
- All VS Code extensions and settings are pre-configured
- Changes to the code will be reflected immediately due to the volume mount

To start the development server:

```bash
npm run dev
```

## Customization

- Modify `devcontainer.json` to change VS Code settings or extensions
- Modify `Dockerfile` to change the container setup

## Troubleshooting

If you encounter any issues with the devcontainer setup:

1. Check that Docker is running
2. Try rebuilding the container (Dev Containers: Rebuild Container)
3. Check the Docker logs for any error messages
4. If using envbuilder, check the envbuilder logs for any error messages