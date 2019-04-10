defmodule ApiWeb.Schema.PostTypes do
  use Absinthe.Schema.Notation

  object :post do
    field :id, :id
    field :title, :string
    field :description, :string
    field :author_id, :string

    field :author, :author do
      resolve(fn post, _, _ ->
        ApiWeb.Resolvers.Rest.get_author(nil, %{author_id: post.author_id}, nil)
      end)
    end
  end
end
