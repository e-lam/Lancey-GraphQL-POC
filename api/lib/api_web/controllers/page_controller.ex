defmodule ApiWeb.PageController do
  use ApiWeb, :controller

  def index(conn, _params) do
    text(conn, "Welcome to the awesome POC.")
  end
end
