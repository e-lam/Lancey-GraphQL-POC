defmodule Api.Content.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :author_id, :string
    field :description, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :description, :author_id])
    |> validate_required([:title, :description])
  end
end
