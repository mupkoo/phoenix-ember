defmodule PhxEmberWeb.AdminController do
  use PhxEmberWeb, :controller

  def index(conn, _params) do
    content =
      "./frontend/admin/dist/index.html"
      |> File.read!()
      |> String.replace(
        "</head>",
        ~s{<meta name="token" content="#{token(conn)}" /></head>}
      )

    html(conn, content)
  end

  defp token(conn) do
    Phoenix.Token.sign(conn, "user auth", 1)
  end
end
