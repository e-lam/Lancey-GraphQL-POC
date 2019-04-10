defmodule ApiWeb.Schema.AuthorTypes do
  use Absinthe.Schema.Notation

  object :author do
    field :id, :string
    field :name, :string
    field :age, :integer
  end
end
