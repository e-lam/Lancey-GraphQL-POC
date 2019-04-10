defmodule Rest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    case Code.ensure_loaded(ExSync) do
      {:module, ExSync = mod} ->
        mod.start()

      {:error, :nofile} ->
        :ok
    end

    # List all child processes to be supervised
    children = [
      Rest.Server
      # Starts a worker by calling: Rest.Worker.start_link(arg)
      # {Rest.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Rest.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
