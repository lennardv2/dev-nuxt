# Nuxt.js Development Container

This directory contains configuration files for setting up a development container for this Nuxt.js project.

## Features

- Node.js 20 (Bullseye)
- Git, curl, wget, and other essential tools
- Global npm packages: pnpm, npm, nuxi (latest versions)
- VS Code extensions for Vue.js/Nuxt.js development
- Port forwarding for Nuxt.js development server

## Usage

### Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Opening the Project in a Container

1. Open the project in VS Code
2. Click on the green icon in the bottom-left corner of VS Code
3. Select "Reopen in Container" from the menu

VS Code will build the container and open the project inside it. This may take a few minutes the first time.

### Development Workflow

Once the container is running:

- The Nuxt.js development server will be accessible at http://localhost:3000
- All VS Code extensions and settings are pre-configured
- Changes to the code will be reflected immediately due to the volume mount

To start the development server:

```bash
npm run dev
```

### Customization

- Modify `devcontainer.json` to change VS Code settings or extensions
- Modify `Dockerfile` to change the container setup
- Modify `docker-compose.yml` to add additional services (e.g., databases)

### Troubleshooting

If you encounter any issues with the devcontainer setup:

1. Check that Docker is running
2. Try rebuilding the container (Dev Containers: Rebuild Container)
3. Check the Docker logs for any error messages