# My Website

[![Netlify Status](https://api.netlify.com/api/v1/badges/0a56f7df-cacd-4f46-9f40-45c16e62fd31/deploy-status)](https://app.netlify.com/sites/alistaircol/deploys)

Site built with `hugo` and forked [papercss](https://themes.gohugo.io/theme/papercss-hugo-theme/) theme.

Favicon generated with [favicon.io](https://favicon.io/favicon-generator/); foreground: `#ddddde`, background: `#2e2e33`, Roboto @ font size 90

## Blogging

Make a new article with `make article`.

Lint yaml files on commit, shouldn't edit many yaml files after initial setup.

```shell
git config core.hookspath "$(pwd)/.scripts"
```


## Development

I use Hugo inside a container `klakegg/hugo` Docker image.

Simply:

```
make
# or
make development
```

To start a development server.

```
$ make
docker run --rm --interactive --tty --user=$(id -u) --volume="$(pwd):/src" --publish="1313:1313" klakegg/hugo server

                   | EN  
-------------------+-----
  Pages            | 52  
  Paginator pages  |  0  
  Non-page files   |  0  
  Static files     | 95  
  Processed images |  0  
  Aliases          |  0  
  Sitemaps         |  1  
  Cleaned          |  0  

Built in 51 ms
Watching for changes in /src/{archetypes,content,layouts,static,themes}
Watching for config changes in /src/config.toml
Environment: "DEV"
Serving pages from memory
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at http://localhost:1313/ (bind address 0.0.0.0)
Press Ctrl+C to stop
```
---

Alternatively:

```
make build
```

To build without launching a development server.

```
$ make build
docker run --rm --interactive --tty --user=$(id -u) --volume="$(pwd):/src" klakegg/hugo

                   | EN  
-------------------+-----
  Pages            | 52  
  Paginator pages  |  0  
  Non-page files   |  0  
  Static files     | 95  
  Processed images |  0  
  Aliases          |  0  
  Sitemaps         |  1  
  Cleaned          |  0  

Total in 58 ms
```
