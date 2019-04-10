defmodule ApiWeb.Resolvers.Content do
  def list_posts(_parent, _args, _resolution) do
    {:ok, Api.Content.list_posts()}
  end

  def create_post(_parent, args, _resolution) do
    Api.Content.create_post(args)
  end
end
