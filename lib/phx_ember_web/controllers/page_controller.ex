defmodule PhxEmberWeb.PageController do
  use PhxEmberWeb, :controller

  def index(conn, _params) do
    html(conn, File.read!("./priv/static/index.html"))
  end
end
