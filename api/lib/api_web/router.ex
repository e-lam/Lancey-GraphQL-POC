defmodule ApiWeb.Router do
  use ApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through(:api)

    forward "/", Absinthe.Plug,
      schema: ApiWeb.Schema,
      json_codec: Jason
  end

  forward(
    "/graphiql",
    Absinthe.Plug.GraphiQL,
    schema: ApiWeb.Schema,
    interface: :playground,
    json_codec: Jason
  )
end
