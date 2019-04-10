defmodule Rest.Api.User do
  use Rest.Server

  get do
    json(conn, %{hello: :world})
  end

  namespace :users do
    get do
      json(conn, [%{id: "1", name: "John", age: 40}, %{id: "2", name: "Foo", age: 36}])
    end

    namespace ":user_id" do
      desc("Retrieve a user's status.")

      params do
        requires(:user_id, type: Integer)
      end

      get do
        json(conn, %{id: "1", name: "John", age: 40})
      end
    end
  end
end
