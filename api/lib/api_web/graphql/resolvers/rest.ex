defmodule ApiWeb.Resolvers.Rest do
  def list_authors(_parent, _args, _resolution) do
    %HTTPoison.Response{body: body} = HTTPoison.get!("http://127.0.0.1:8880/users/")
    {:ok, Poison.Parser.parse!(body, %{keys: :atoms!})}
  end

  def get_author(_parent, args, _resolution) do
    if args[:author_id] do
      %HTTPoison.Response{body: body} =
        HTTPoison.get!("http://127.0.0.1:8880/users/" <> args[:author_id])

      {:ok, Poison.Parser.parse!(body, %{keys: :atoms!})}
    else
      {:error, "Not found"}
    end
  end
end
