# Lancey GraphQL POC

## Concept

Implementing this architecture :

![](http://share.e-lam.net/afafe0c7b6b3/archi.png)

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
- Setup database : `mix ecto.setup`
- Run seeds (populate sample data) : `$ mix run priv/repo/seeds.exs`

## Go to the moon

At the root : `$ overmind start`
