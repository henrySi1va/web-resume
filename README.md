# My Project Resume

This repo contains a list of all the projects I have worked on along with a web app to display my experience in a searchable way.

## Development

To develop in this repo, clone it and build the docker image with:

```
docker compose build
```

You can then start the container with:

```
docker compose up
```

You can connect to the container with the development tool of your choice.
`neovim` is installed with a link to the hosts `.config/nvim` so that any configuration is shared with the container.

The dev server is run on port `3000` and by running the following in the `web-resume` directory:

```
npm run dev
```

