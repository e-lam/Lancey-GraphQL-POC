defmodule Api.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :text
      add :description, :text
      add :author_id, :text

      timestamps()
    end

  end
end
