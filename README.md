# Tachyons Components

This is my attempt to re-create the code examples on the [Tachyons Components][]
documentation pages using [Elm][].

The purpose is simply for web interface coding practice using [Tachyons][] and
Elm.

Currently deployed at:

- Heroku: <https://tachyons-components.herokuapp.com/>

## Development

### Dependencies

- [Elm][] 0.19.1
- [NodeJS][] 13.0.1

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
```

### Run Server

```sh
elm-app start
```

Now, you should be able to see the pages at the following address:

- <http://localhost:3000>

## Deployment

Deployment is managed in the [`push`](push) script. It creates a build, pushes
the code to Github, and deploys out to Heroku with the command:

```sh
./push
```

[Create Elm App]: https://github.com/halfzebra/create-elm-app
[Elm]: http://elm-lang.org/
[NodeJS]: https://nodejs.org/en/
[Tachyons]: http://tachyons.io/
[Tachyons Components]: http://tachyons.io/components/
