defmodule Rest.Api.User do
  use Rest.Server

  @users %{
    "1" => %{id: "1", name: "Kelly White", age: 40},
    "2" => %{id: "2", name: "Jack Coleman", age: 36}
  }

  get do
    json(conn, %{hello: :world})
  end

  namespace :users do
    get do
      json(conn, [
        %{id: "1", name: "Kelly White", age: 40},
        %{id: "2", name: "Jack Coleman", age: 36}
      ])
    end

    namespace ":user_id" do
      desc("Retrieve a user's status.")

      params do
        requires(:user_id, type: String)
      end

      get do
        json(conn, @users[params[:user_id]])
      end
    end
  end
end
