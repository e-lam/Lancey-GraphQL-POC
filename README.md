# Lancey GraphQL POC

## Concept

Implementing this architecture :

![](http://share.e-lam.net/c7f861eae3e8/archi.png)

## Install

First things first :

- [Elixir/Erlang](https://elixir-lang.org/install.html)
- After installing Elixir, you need to install hex : `$ mix local.hex`
- [Overmind](https://github.com/DarthSim/overmind) _(Process manager for Procfile-based applications and tmux)_
- You need PostgreSQL

## Setup apps

After cloning this repo, your need to :

#### 1. Simple Rest API

- Go to Rest API : `cd rest`
- Install dependencies : `mix deps.get`

#### 2. GraphQL API Server

- Go to Rest API : `cd api`
- Install dependencies : `mix deps.get`
- Setup database and run seeds : `mix ecto.setup`

## Go to the moon 🚀

At the root : `$ overmind start`

### Query Examples

#### Query all authors (Via Rest API)

```graphql
query {
  authors {
    id
    name
    age
  }
}
```

#### Query all posts (On database)

```graphql
query {
  posts {
    id
    title
    description
  }
}
```

#### ✨✨ Start magic (MIX BOTH) ✨✨

```graphql
query {
  posts {
    id
    title
    description
    author {
      name
      age
    }
  }
}
```

## Read more on GraphQL

- [Fragments](https://graphql.org/learn/queries/#fragments)
- [Subscription](https://www.apollographql.com/docs/react/advanced/subscriptions) or [here](https://medium.com/@hpux/make-web-real-time-with-graphql-subscriptions-5a59ac1b010c)
