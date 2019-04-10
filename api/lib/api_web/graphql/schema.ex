defmodule ApiWeb.Schema do
  use Absinthe.Schema
  import_types(ApiWeb.Schema.PostTypes)
  import_types(ApiWeb.Schema.AuthorTypes)

  alias ApiWeb.Resolvers

  query do
    @desc "Get all posts"
    field :posts, list_of(:post) do
      resolve(&Resolvers.Content.list_posts/3)
    end

    @desc "Get all authors"
    field :authors, list_of(:author) do
      resolve(&Resolvers.Rest.list_authors/3)
    end
  end

  mutation do
    @desc "Create a post"
    field :create_post, type: :post do
      arg(:title, non_null(:string))
      arg(:description, non_null(:string))
      arg(:author_id, :string)

      resolve(&Resolvers.Content.create_post/3)
    end
  end
end
