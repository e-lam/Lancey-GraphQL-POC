defmodule Rest.API do
  use Rest.Server

  before do
    plug(Plug.Logger)
  end

  plug(Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Jason,
    parsers: [:urlencoded, :json, :multipart]
  )

  mount(Rest.Api.User)

  rescue_from :all do
    conn
    |> put_status(500)
    |> text("Server Error")
  end
end
