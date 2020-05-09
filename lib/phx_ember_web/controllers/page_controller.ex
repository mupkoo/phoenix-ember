defmodule PhxEmberWeb.PageController do
  use PhxEmberWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
