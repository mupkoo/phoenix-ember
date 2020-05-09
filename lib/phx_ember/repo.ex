defmodule PhxEmber.Repo do
  use Ecto.Repo,
    otp_app: :phx_ember,
    adapter: Ecto.Adapters.Postgres
end
