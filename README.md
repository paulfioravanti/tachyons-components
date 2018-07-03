# Tachyons Components

This is my attempt to (mostly) re-create the [Tachyons Components][]
documentation pages using [Elm][].

The purpose is simply for web interface coding practice using [Tachyons][] and
Elm.

Currently a work in progress...

## Development

### Dependencies

- [Elm][] 0.18.0
- [NodeJS][] 10.5.0

## Setup

### Global

This app was created using [Create Elm App][] and uses some commands that it
provides, so install it globally with `npm`:

```sh
npm install -g create-elm-app
```

### Application

```sh
git clone https://github.com/paulfioravanti/tachyons-components.git
cd tachyons-components
npm install
elm-package install
```

### Run Server

```sh
elm-app start
```

Now, you should be able to see the pages at the following address:

- <http://localhost:3000>

[Create Elm App]: https://github.com/halfzebra/create-elm-app
[Elm]: http://elm-lang.org/
[NodeJS]: https://nodejs.org/en/
[Tachyons]: http://tachyons.io/
[Tachyons Components]: http://tachyons.io/components/
